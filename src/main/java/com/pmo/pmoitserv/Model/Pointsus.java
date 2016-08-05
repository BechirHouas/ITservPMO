package com.pmo.pmoitserv.Model;
// Generated 27 juil. 2016 12:16:57 by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * Pointsus generated by hbm2java
 */
@Entity
@Table(name="pointsus")
public class Pointsus  implements java.io.Serializable {


     @Id
     @Column(name="idPointSus")
     private int idPointSus;
     
     @ManyToOne
     @JoinColumn(name="projet_idProjet") 
     private Projet projet;
     
     @ManyToOne
     @JoinColumn(name="utilisateur_idUtilisateur")
     private Utilisateur utilisateur;
     
     
     @Column(name="PointSusNum")
     private Integer pointSusNum;
     @Column(name="PointSusDescrip")
     private String pointSusDescrip;
     @Column(name="PointSusStatut")
     private String pointSusStatut;
     @Column(name="PointSusPriorite")
     private String pointSusPriorite;
     @Column(name="PointSusCreation")
     private Date pointSusCreation;
     @Column(name="PointSusResPlan")
     private Date pointSusResPlan;
     @Column(name="PointSusResReal")
     private Date pointSusResReal;
     @Column(name="PointSusImpacts")
     private String pointSusImpacts;
     @Column(name="PointSusDecis")
     private String pointSusDecis;

    public Pointsus() {
    }

	
    public Pointsus(int idPointSus, Projet projet, Utilisateur utilisateur, String pointSusDescrip) {
        this.idPointSus = idPointSus;
        this.projet = projet;
        this.utilisateur = utilisateur;
        this.pointSusDescrip = pointSusDescrip;
    }
    public Pointsus(int idPointSus, Projet projet, Utilisateur utilisateur, Integer pointSusNum, String pointSusDescrip, String pointSusStatut, String pointSusPriorite, Date pointSusCreation, Date pointSusResPlan, Date pointSusResReal, String pointSusImpacts, String pointSusDecis) {
       this.idPointSus = idPointSus;
       this.projet = projet;
       this.utilisateur = utilisateur;
       this.pointSusNum = pointSusNum;
       this.pointSusDescrip = pointSusDescrip;
       this.pointSusStatut = pointSusStatut;
       this.pointSusPriorite = pointSusPriorite;
       this.pointSusCreation = pointSusCreation;
       this.pointSusResPlan = pointSusResPlan;
       this.pointSusResReal = pointSusResReal;
       this.pointSusImpacts = pointSusImpacts;
       this.pointSusDecis = pointSusDecis;
    }
   
    public int getIdPointSus() {
        return this.idPointSus;
    }
    
    public void setIdPointSus(int idPointSus) {
        this.idPointSus = idPointSus;
    }
    public Projet getProjet() {
        return this.projet;
    }
    
    public void setProjet(Projet projet) {
        this.projet = projet;
    }
    public Utilisateur getUtilisateur() {
        return this.utilisateur;
    }
    
    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }
    public Integer getPointSusNum() {
        return this.pointSusNum;
    }
    
    public void setPointSusNum(Integer pointSusNum) {
        this.pointSusNum = pointSusNum;
    }
    public String getPointSusDescrip() {
        return this.pointSusDescrip;
    }
    
    public void setPointSusDescrip(String pointSusDescrip) {
        this.pointSusDescrip = pointSusDescrip;
    }
    public String getPointSusStatut() {
        return this.pointSusStatut;
    }
    
    public void setPointSusStatut(String pointSusStatut) {
        this.pointSusStatut = pointSusStatut;
    }
    public String getPointSusPriorite() {
        return this.pointSusPriorite;
    }
    
    public void setPointSusPriorite(String pointSusPriorite) {
        this.pointSusPriorite = pointSusPriorite;
    }
    public Date getPointSusCreation() {
        return this.pointSusCreation;
    }
    
    public void setPointSusCreation(Date pointSusCreation) {
        this.pointSusCreation = pointSusCreation;
    }
    public Date getPointSusResPlan() {
        return this.pointSusResPlan;
    }
    
    public void setPointSusResPlan(Date pointSusResPlan) {
        this.pointSusResPlan = pointSusResPlan;
    }
    public Date getPointSusResReal() {
        return this.pointSusResReal;
    }
    
    public void setPointSusResReal(Date pointSusResReal) {
        this.pointSusResReal = pointSusResReal;
    }
    public String getPointSusImpacts() {
        return this.pointSusImpacts;
    }
    
    public void setPointSusImpacts(String pointSusImpacts) {
        this.pointSusImpacts = pointSusImpacts;
    }
    public String getPointSusDecis() {
        return this.pointSusDecis;
    }
    
    public void setPointSusDecis(String pointSusDecis) {
        this.pointSusDecis = pointSusDecis;
    }




}

