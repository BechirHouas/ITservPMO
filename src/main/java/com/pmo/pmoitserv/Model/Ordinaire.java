package com.pmo.pmoitserv.Model;
// Generated 27 juil. 2016 12:16:57 by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 * Ordinaire generated by hbm2java
 */
@Entity
@Table(name="ordinaire")
@PrimaryKeyJoinColumn(name="idUtilisateur")
public class Ordinaire extends Utilisateur implements java.io.Serializable {


 /*    @Id
     @Column(name="idOrdinaire")
     private int idOrdinaire;
     
     @ManyToOne
     @JoinColumn(name="utilisateur_idUtilisateur")
     private Utilisateur utilisateur;
*/
    public Ordinaire() {
    }
/*
    public Ordinaire(Utilisateur utilisateur) {
       this.utilisateur = utilisateur;
    }
   
    public int getIdOrdinaire() {
        return this.idOrdinaire;
    }
    
    public void setIdOrdinaire(int idOrdinaire) {
        this.idOrdinaire = idOrdinaire;
    }
    public Utilisateur getUtilisateur() {
        return this.utilisateur;
    }
    
    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

*/


}


