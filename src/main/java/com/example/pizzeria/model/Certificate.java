package com.example.pizzeria.model;

import com.example.pizzeria.entity.CertificateEntity;
import com.example.pizzeria.entity.UserEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
public class Certificate {
    private UUID id;
    private User fromUser;
    private User toUser;
    private String dateCreate;
    private int price;

    public Certificate() {}

    public static Certificate toModel(CertificateEntity certificateEntity) {
        Certificate certificate = new Certificate();
        certificate.setDateCreate(certificateEntity.getDateCreate());
        certificate.setId(certificateEntity.getId());
        certificate.setFromUser(User.toModel(certificateEntity.getFromUser()));
        certificate.setToUser(User.toModel(certificateEntity.getToUser()));
        certificate.setPrice(certificateEntity.getPrice());
        return certificate;
    }
    public static List<Certificate> toModel(List<CertificateEntity> certificateEntities) {
        List<Certificate> certificates = new ArrayList<>();
        for (int i = 0; i < certificateEntities.size(); i++) {
            CertificateEntity certificate = certificateEntities.get(i);
            certificates.add(toModel(certificate));
        }
        return certificates;
    }

}
