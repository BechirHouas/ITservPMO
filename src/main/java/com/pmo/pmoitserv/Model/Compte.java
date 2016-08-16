package com.pmo.pmoitserv.Model;
// Generated 27 juil. 2016 12:16:57 by Hibernate Tools 4.3.1


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;
/**
 * Compte generated by hbm2java
 */
@Entity
@Table( name ="compte" )
public class Compte  implements java.io.Serializable {
    @Size(max = 100)
    @Column(name = "CompteLogolien")
    private String compteLogolien;
    @Size(max = 45)
    @Column(name = "CompteAdresse")
    private String compteAdresse;
    @Size(max = 45)
    @Column(name = "CompteEmail")
    private String compteEmail;
    @Size(max = 45)
    @Column(name = "CompteTel")
    private String compteTel;
    @JoinTable(name = "utilisateur_compte", joinColumns = {
        @JoinColumn(name = "Compte_idCompte", referencedColumnName = "idCompte")}, inverseJoinColumns = {
        @JoinColumn(name = "Utilisateur_idUtilisateur", referencedColumnName = "idUtilisateur")})
    @ManyToMany
    private Collection<Utilisateur> utilisateurCollection;

     @Id
     @Column(name="idCompte")
     @GeneratedValue
     private int idCompte;
     @Column(name="CompteNom")
     private String compteNom;
     
     @ManyToMany(mappedBy="comptes")
     private Set<Utilisateur> utilisateurs = new HashSet<Utilisateur>(0);
     
     @OneToMany(mappedBy="compte")
     private Set<Projet> projets = new HashSet<Projet>(0);
     
     @ManyToMany(mappedBy="comptes")
     private Set<Partenaire> partenaires = new HashSet<Partenaire>(0);

    public Compte() {
    }

	
    public Compte(int idCompte) {
        this.idCompte = idCompte;
    }
    public Compte(int idCompte, String compteNom, Set<Utilisateur> utilisateurs, Set<Projet> projets, Set<Partenaire> partenaires) {
       this.idCompte = idCompte;
       this.compteNom = compteNom;
       this.utilisateurs = utilisateurs;
       this.projets = projets;
       this.partenaires = partenaires;
    }
   
    public int getIdCompte() {
        return this.idCompte;
    }
    
    public void setIdCompte(int idCompte) {
        this.idCompte = idCompte;
    }
    public String getCompteNom() {
        return this.compteNom;
    }
    
    public void setCompteNom(String compteNom) {
        this.compteNom = compteNom;
    }
    public Set<Utilisateur> getUtilisateurs() {
        return this.utilisateurs;
    }
    
    public void setUtilisateurs(Set<Utilisateur> utilisateurs) {
        this.utilisateurs = utilisateurs;
    }
    public Set<Projet> getProjets() {
        return this.projets;
    }
    
    public void setProjets(Set<Projet> projets) {
        this.projets = projets;
    }
    public Set<Partenaire> getPartenaires() {
        return this.partenaires;
    }
    
    public void setPartenaires(Set<Partenaire> partenaires) {
        this.partenaires = partenaires;
    }

    public String getCompteLogolien() {
        return compteLogolien;
    }

    public void setCompteLogolien(String compteLogolien) {
        this.compteLogolien = compteLogolien;
    }

    public String getCompteAdresse() {
        return compteAdresse;
    }

    public void setCompteAdresse(String compteAdresse) {
        this.compteAdresse = compteAdresse;
    }

    public String getCompteEmail() {
        return compteEmail;
    }

    public void setCompteEmail(String compteEmail) {
        this.compteEmail = compteEmail;
    }

    public String getCompteTel() {
        return compteTel;
    }

    public void setCompteTel(String compteTel) {
        this.compteTel = compteTel;
    }

    @XmlTransient
    public Collection<Utilisateur> getUtilisateurCollection() {
        return utilisateurCollection;
    }

    public void setUtilisateurCollection(Collection<Utilisateur> utilisateurCollection) {
        this.utilisateurCollection = utilisateurCollection;
    }




}


