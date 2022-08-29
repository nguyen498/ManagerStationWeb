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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "route")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Route.findAll", query = "SELECT r FROM Route r"),
    @NamedQuery(name = "Route.findById", query = "SELECT r FROM Route r WHERE r.id = :id"),
    @NamedQuery(name = "Route.findByTuyenBD", query = "SELECT r FROM Route r WHERE r.tuyenBD = :tuyenBD"),
    @NamedQuery(name = "Route.findByTuyenKT", query = "SELECT r FROM Route r WHERE r.tuyenKT = :tuyenKT")})
public class Route implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50, message = "route.tuyenBD.err")
    @Column(name = "tuyenBD")
    private String tuyenBD;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50, message = "route.tuyenKT.err")
    @Column(name = "tuyenKT")
    private String tuyenKT;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "routeId")
    private Set<Bustrip> bustripSet;

    public Route() {
    }

    public Route(Integer id) {
        this.id = id;
    }

    public Route(Integer id, String tuyenBD, String tuyenKT) {
        this.id = id;
        this.tuyenBD = tuyenBD;
        this.tuyenKT = tuyenKT;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTuyenBD() {
        return tuyenBD;
    }

    public void setTuyenBD(String tuyenBD) {
        this.tuyenBD = tuyenBD;
    }

    public String getTuyenKT() {
        return tuyenKT;
    }

    public void setTuyenKT(String tuyenKT) {
        this.tuyenKT = tuyenKT;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Route)) {
            return false;
        }
        Route other = (Route) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htn.pojo.Route[ id=" + id + " ]";
    }
    
}
