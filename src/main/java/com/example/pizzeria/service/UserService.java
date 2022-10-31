package com.example.pizzeria.service;

import com.example.pizzeria.entity.CertificateEntity;
import com.example.pizzeria.entity.RoleEntity;
import com.example.pizzeria.entity.UserEntity;
import com.example.pizzeria.model.Certificate;
import com.example.pizzeria.repository.AddressRepo;
import com.example.pizzeria.repository.RoleRepo;
import com.example.pizzeria.repository.UserRepo;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;


@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private RoleRepo roleRepo;
    @Autowired
    private AddressRepo addressRepo;
    @Autowired
    private RoleService roleService;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    private final List adminUsernames = Arrays.asList("ADMIN", "DEMO", "MAIN");

    public List<UserEntity> getAll() {
        return userRepo.findAll();
    }
    public List<UserEntity> filterByFields(UserEntity userFields) {
        List<UserEntity> finded = userRepo.filterByFields(userFields);
        return finded;
    }

    public UserEntity addUser(UserEntity user) throws Exception {
        UserEntity userEqualUsername = userRepo.findByUsername(user.getUsername());
        if(userEqualUsername != null) {
            throw new Exception("Пользователь с таким username уже есть");
        }
        user.setCash(0L);
        RoleEntity userRole = roleService.findOrCreateRole("USER");
        user.addRole(userRole);
        if(adminUsernames.contains(user.getUsername())) {
            RoleEntity adminRole = roleService.findOrCreateRole("ADMIN");
            user.addRole(adminRole);
        }
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.addAddress(user.getAddress());
        addressRepo.save(user.getAddress());
        userRepo.save(user);
        return user;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity user = userRepo.findByUsername(username);
        if(user == null) {
            throw new UsernameNotFoundException("Пользователь не найден");
        }
        return user;
    }
}
