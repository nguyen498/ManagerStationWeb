/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "bus")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bus.findAll", query = "SELECT b FROM Bus b"),
    @NamedQuery(name = "Bus.findByBiensoxe", query = "SELECT b FROM Bus b WHERE b.biensoxe = :biensoxe")})
public class Bus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "biensoxe")
    private String biensoxe;
    @OneToMany(mappedBy = "busId")
    private Set<Seat> seatSet;
    @JoinColumn(name = "manhaxe", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Station manhaxe;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bus")
    private Set<Bustrip> bustripSet;

    public Bus() {
    }

    public Bus(String biensoxe) {
        this.biensoxe = biensoxe;
    }

    public String getBiensoxe() {
        return biensoxe;
    }

    public void setBiensoxe(String biensoxe) {
        this.biensoxe = biensoxe;
    }

    @XmlTransient
    public Set<Seat> getSeatSet() {
        return seatSet;
    }

    public void setSeatSet(Set<Seat> seatSet) {
        this.seatSet = seatSet;
    }

    public Station getManhaxe() {
        return manhaxe;
    }

    public void setManhaxe(Station manhaxe) {
        this.manhaxe = manhaxe;
    }

    @XmlTransient
    public Set<Bustrip> getBustripSet() {
        return bustripSet;
    }

    public void setBustripSet(Set<Bustrip> bustripSet) {
        this.bustripSet = bustripSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (biensoxe != null ? biensoxe.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bus)) {
            return false;
        }
        Bus other = (Bus) object;
        if ((this.biensoxe == null && other.biensoxe != null) || (this.biensoxe != null && !this.biensoxe.equals(other.biensoxe))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htn.pojo.Bus[ biensoxe=" + biensoxe + " ]";
    }
    
}
