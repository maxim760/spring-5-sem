package com.example.pizzeria.controller;

import com.example.pizzeria.entity.AddressEntity;
import com.example.pizzeria.entity.UserEntity;
import com.example.pizzeria.repository.AddressRepo;
import com.example.pizzeria.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;

@Controller
public class MainController {

    @Autowired
    private UserService userService;
    @Autowired
    private AddressRepo addressRepo;

    @GetMapping(value = {"/", "/index", "/home"})
    public String index(Model model, @AuthenticationPrincipal UserEntity user) {
        
        model.addAttribute("user", user);
        model.addAttribute("address", user.getAddress());
        return "home";
    }

    @GetMapping("/registration")
    public String getRegisterPage(Model model) {
        model.addAttribute("user", new UserEntity());
        return "registration";
    }

    @PostMapping("/registration")
    public String registerUser(UserEntity userEntity, Model model, RedirectAttributes redirectAttributes) {
        try {
            userService.addUser(userEntity);
            model.addAttribute("message", "Пользователь добавлен");
            return "redirect:/login?afterReg";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorTitle", "Ошибка при регистрации");
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
            return "redirect:/error";
        }
    }
}
