package br.com.caelum.ingresso.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.validation.constraints.Email;

@Entity
public class Token {

    @Id
    private String uuid;

    @Email
    private String email;

    public Token(){}

    public Token(String email) {
        this.email = email;
    }

    //getters e setters

    @PrePersist
    public void prePersist(){
        uuid = UUID.randomUUID().toString();
    }
}