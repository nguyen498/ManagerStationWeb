/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "bustrip")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bustrip.findAll", query = "SELECT b FROM Bustrip b"),
    @NamedQuery(name = "Bustrip.findById", query = "SELECT b FROM Bustrip b WHERE b.id = :id"),
    @NamedQuery(name = "Bustrip.findByThoigian", query = "SELECT b FROM Bustrip b WHERE b.thoigian = :thoigian")})
public class Bustrip implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "thoigian")
    @Temporal(TemporalType.TIMESTAMP)
    private Date thoigian;
    @JoinColumn(name = "bus", referencedColumnName = "biensoxe")
    @ManyToOne(optional = false)
    private Bus bus;
    @JoinColumn(name = "driver_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Driver driverId;
    @JoinColumn(name = "route_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Route routeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bustripId")
    private Set<Post> postSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bustripId")
    private Set<Ticket> ticketSet;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bustripId")
    private Set<Goods> goodsSet;

    public Bustrip() {
    }

    public Bustrip(Integer id) {
        this.id = id;
    }

    public Bustrip(Integer id, Date thoigian) {
        this.id = id;
        this.thoigian = thoigian;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getThoigian() {
        return thoigian;
    }

    public void setThoigian(Date thoigian) {
        this.thoigian = thoigian;
    }

    public Bus getBus() {
        return bus;
    }

    public void setBus(Bus bus) {
        this.bus = bus;
    }

    public Driver getDriverId() {
        return driverId;
    }

    public void setDriverId(Driver driverId) {
        this.driverId = driverId;
    }

    public Route getRouteId() {
        return routeId;
    }

    public void setRouteId(Route routeId) {
        this.routeId = routeId;
    }

    @XmlTransient
    public Set<Post> getPostSet() {
        return postSet;
    }

    public void setPostSet(Set<Post> postSet) {
        this.postSet = postSet;
    }

    @XmlTransient
    public Set<Ticket> getTicketSet() {
        return ticketSet;
    }

    public void setTicketSet(Set<Ticket> ticketSet) {
        this.ticketSet = ticketSet;
    }

    @XmlTransient
    public Set<Goods> getGoodsSet() {
        return goodsSet;
    }

    public void setGoodsSet(Set<Goods> goodsSet) {
        this.goodsSet = goodsSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bustrip)) {
            return false;
        }
        Bustrip other = (Bustrip) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htn.pojo.Bustrip[ id=" + id + " ]";
    }
    
}
