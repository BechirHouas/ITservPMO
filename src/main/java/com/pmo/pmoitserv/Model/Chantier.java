package com.pmo.pmoitserv.Model;
// Generated 27 juil. 2016 12:16:57 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Chantier generated by hbm2java
 */
@Entity
@Table(name="chantier")
public class Chantier  implements java.io.Serializable {
    @JoinColumn(name = "Sousprojet_idSousprojet", referencedColumnName = "idSousprojet")
    @ManyToOne(optional = false)
    private Sousprojet sousprojetidSousprojet;


     @Id
     @Column(name="idChantier")
     @GeneratedValue
     private int idChantier;
     
     @ManyToOne
     @JoinColumn(name="sousprojet_idSousprojet")
     private Sousprojet sousprojet;
     
     @Column(name="ChantierLabel")
     private String chantierLabel;
     
     @OneToMany(mappedBy="chantier")
     private Set<Action> actions = new HashSet<Action>(0);

    public Chantier() {
    }

	
    public Chantier(int idChantier, Sousprojet sousprojet) {
        this.idChantier = idChantier;
        this.sousprojet = sousprojet;
    }
    public Chantier(int idChantier, Sousprojet sousprojet, String chantierLabel, Set<Action> actions) {
       this.idChantier = idChantier;
       this.sousprojet = sousprojet;
       this.chantierLabel = chantierLabel;
       this.actions = actions;
    }
   
    public int getIdChantier() {
        return this.idChantier;
    }
    
    public void setIdChantier(int idChantier) {
        this.idChantier = idChantier;
    }
    public Sousprojet getSousprojet() {
        return this.sousprojet;
    }
    
    public void setSousprojet(Sousprojet sousprojet) {
        this.sousprojet = sousprojet;
    }
    public String getChantierLabel() {
        return this.chantierLabel;
    }
    
    public void setChantierLabel(String chantierLabel) {
        this.chantierLabel = chantierLabel;
    }
    public Set<Action> getActions() {
        return this.actions;
    }
    
    public void setActions(Set<Action> actions) {
        this.actions = actions;
    }

    public Sousprojet getSousprojetidSousprojet() {
        return sousprojetidSousprojet;
    }

    public void setSousprojetidSousprojet(Sousprojet sousprojetidSousprojet) {
        this.sousprojetidSousprojet = sousprojetidSousprojet;
    }




}


