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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "station")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Station.findAll", query = "SELECT s FROM Station s"),
    @NamedQuery(name = "Station.findById", query = "SELECT s FROM Station s WHERE s.id = :id"),
    @NamedQuery(name = "Station.findByTennhaxe", query = "SELECT s FROM Station s WHERE s.tennhaxe = :tennhaxe"),
    @NamedQuery(name = "Station.findByDiachi", query = "SELECT s FROM Station s WHERE s.diachi = :diachi")})
public class Station implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull(message = "{station.name.err}")
    @Size(min = 1, max = 45, message = "{station.name.err}")
    @Column(name = "tennhaxe")
    @NotBlank(message = "{notblank.err}")
    private String tennhaxe;
    @Basic(optional = false)
    @NotNull(message = "{station.address.err}")
    @Size(min = 1, max = 100, message = "{station.address.err}")
    @Column(name = "diachi")
    @NotBlank(message = "{notblank.err}")
    private String diachi;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "manhaxe")
    private Set<Bus> busSet;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne
    private User userId;

    public Station() {
    }

    public Station(Integer id) {
        this.id = id;
    }

    public Station(Integer id, String tennhaxe, String diachi) {
        this.id = id;
        this.tennhaxe = tennhaxe;
        this.diachi = diachi;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTennhaxe() {
        return tennhaxe;
    }

    public void setTennhaxe(String tennhaxe) {
        this.tennhaxe = tennhaxe;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    @XmlTransient
    public Set<Bus> getBusSet() {
        return busSet;
    }

    public void setBusSet(Set<Bus> busSet) {
        this.busSet = busSet;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
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
        if (!(object instanceof Station)) {
            return false;
        }
        Station other = (Station) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htn.pojo.Station[ id=" + id + " ]";
    }
    
}
