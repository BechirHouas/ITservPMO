package com.pmo.pmoitserv.Model;
// Generated 27 juil. 2016 12:16:57 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Utilisateur generated by hbm2java
 */
@Entity
@Table(name="utilisateur")
@Inheritance(strategy=InheritanceType.JOINED)
public class Utilisateur  implements java.io.Serializable {


     @Id
     @Column(name="idUtilisateur")
     @GeneratedValue
     private int idUtilisateur;
     
     @Column(name="UtilisateurLogin")
     private String utilisateurLogin;
     @Column(name="UtilisateurPassword")
     private String utilisateurPassword;
     @Column(name="UtilisateurEmail")
     private String utilisateurEmail;
     @Column(name="UtilisateurNom")
     private String utilisateurNom;
     @Column(name="UtilisateurPrenom")
     private String utilisateurPrenom;
     @Column(name="UtilisateurTel")
     private String utilisateurTel;
     @Column(name="UtilisateurEtat")
     private Integer utilisateurEtat;
     
     
     @ManyToMany
     @JoinTable(name="utilisateur_compte", 
		joinColumns={@JoinColumn(name="utilisateur_idUtilisateur")}, 
		inverseJoinColumns={@JoinColumn(name="compte_idCompte")})
     private Set<Compte> comptes = new HashSet<Compte>(0);
     
     @OneToMany(mappedBy="utilisateur")
     private Set<Demande> demandes = new HashSet<Demande>(0);
     
     @OneToMany(mappedBy="utilisateur")
     private Set<Action> actions = new HashSet<Action>(0);
     
     @OneToMany(mappedBy="utilisateur")
     private Set<Pointsus> pointsuses = new HashSet<Pointsus>(0);
     
 /*    @ManyToOne
     @JoinColumn(name="intervenant_idIntervenant")
     private Intervenant intervenant;
     
     @ManyToOne
     @JoinColumn(name="ordinaire_idOrdinaire")
     private Ordinaire ordinaire;
     
     @ManyToOne
     @JoinColumn(name="admin_idAdmin")
     private Admin admin;
     
     @ManyToOne
     @JoinColumn(name="etranger_idEtranger")
     private Etranger etranger;
     
     @ManyToOne
     @JoinColumn(name="consultant_idConsultant")
     private Consultant consultant; */

    public Utilisateur() {
    }

	
    public Utilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }
    public Utilisateur(int idUtilisateur, String utilisateurLogin, String utilisateurPassword, String utilisateurNom, String utilisateurPrenom, String utilisateurTel, String utilisateurEmail, Integer utilisateurEtat, Consultant consultant, Set<Compte> comptes, Etranger etranger, Set<Demande> demandes, Set<Action> actions, Set<Pointsus> pointsuses, Intervenant intervenant, Ordinaire ordinaire, Admin admin) {
       this.idUtilisateur = idUtilisateur;
       this.utilisateurLogin = utilisateurLogin;
       this.utilisateurPassword = utilisateurPassword;
       this.utilisateurNom = utilisateurNom;
       this.utilisateurPrenom = utilisateurPrenom;
       this.utilisateurTel = utilisateurTel;
       this.utilisateurEmail = utilisateurEmail;
       this.utilisateurEtat = utilisateurEtat;
 //      this.consultant = consultant;
       this.comptes = comptes;
 //      this.etranger = etranger;
       this.demandes = demandes;
       this.actions = actions;
       this.pointsuses = pointsuses;
 //      this.intervenant = intervenant;
  //     this.ordinaire = ordinaire;
  //     this.admin = admin;
    }
   
    public int getIdUtilisateur() {
        return this.idUtilisateur;
    }
    
    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }
    public String getUtilisateurLogin() {
        return this.utilisateurLogin;
    }
    
    public void setUtilisateurLogin(String utilisateurLogin) {
        this.utilisateurLogin = utilisateurLogin;
    }
    public String getUtilisateurPassword() {
        return this.utilisateurPassword;
    }
    
    public void setUtilisateurPassword(String utilisateurPassword) {
        this.utilisateurPassword = utilisateurPassword;
    }
    public String getUtilisateurNom() {
        return this.utilisateurNom;
    }
    
    public void setUtilisateurNom(String utilisateurNom) {
        this.utilisateurNom = utilisateurNom;
    }
    public String getUtilisateurPrenom() {
        return this.utilisateurPrenom;
    }
    
    public void setUtilisateurPrenom(String utilisateurPrenom) {
        this.utilisateurPrenom = utilisateurPrenom;
    }
    public String getUtilisateurTel() {
        return this.utilisateurTel;
    }
    
    public void setUtilisateurTel(String utilisateurTel) {
        this.utilisateurTel = utilisateurTel;
    }
    public String getUtilisateurEmail() {
        return this.utilisateurEmail;
    }
    
    public void setUtilisateurEmail(String utilisateurEmail) {
        this.utilisateurEmail = utilisateurEmail;
    }
    public Integer getUtilisateurEtat() {
        return this.utilisateurEtat;
    }
    
    public void setUtilisateurEtat(Integer utilisateurEtat) {
        this.utilisateurEtat = utilisateurEtat;
    }
  /*  public Consultant getConsultant() {
        return this.consultant;
    }
    
    public void setConsultant(Consultant consultant) {
        this.consultant = consultant;
    } */
    public Set<Compte> getComptes() {
        return this.comptes;
    }
    
    public void setComptes(Set<Compte> comptes) {
        this.comptes = comptes;
    }
 /*   public Etranger getEtranger() {
        return this.etranger;
    }
    
    public void setEtranger(Etranger etranger) {
        this.etranger = etranger;
    } */
    public Set<Demande> getDemandes() {
        return this.demandes;
    }
    
    public void setDemandes(Set<Demande> demandes) {
        this.demandes = demandes;
    }
    public Set<Action> getActions() {
        return this.actions;
    }
    
    public void setActions(Set<Action> actions) {
        this.actions = actions;
    }
    public Set<Pointsus> getPointsuses() {
        return this.pointsuses;
    }
    
    public void setPointsuses(Set<Pointsus> pointsuses) {
        this.pointsuses = pointsuses;
    }
  /*  public Intervenant getIntervenant() {
        return this.intervenant;
    }
    
    public void setIntervenant(Intervenant intervenant) {
        this.intervenant = intervenant;
    } */
 /*   public Ordinaire getOrdinaire() {
        return this.ordinaire;
    }
    
    public void setOrdinaire(Ordinaire ordinaire) {
        this.ordinaire = ordinaire;
    } */
  /*  public Admin getAdmin() {
        return this.admin;
    }
    
    public void setAdmin(Admin admin) {
        this.admin = admin;
    } */




}


