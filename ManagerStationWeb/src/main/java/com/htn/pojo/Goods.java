/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "goods")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Goods.findAll", query = "SELECT g FROM Goods g"),
    @NamedQuery(name = "Goods.findById", query = "SELECT g FROM Goods g WHERE g.id = :id"),
    @NamedQuery(name = "Goods.findByTenhang", query = "SELECT g FROM Goods g WHERE g.tenhang = :tenhang"),
    @NamedQuery(name = "Goods.findByTennguoinhan", query = "SELECT g FROM Goods g WHERE g.tennguoinhan = :tennguoinhan"),
    @NamedQuery(name = "Goods.findByDiachinhanhang", query = "SELECT g FROM Goods g WHERE g.diachinhanhang = :diachinhanhang"),
    @NamedQuery(name = "Goods.findByEmail", query = "SELECT g FROM Goods g WHERE g.email = :email"),
    @NamedQuery(name = "Goods.findByPhone", query = "SELECT g FROM Goods g WHERE g.phone = :phone")})
public class Goods implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100, message = "{goods.tenhang.err}")
    @Column(name = "tenhang")
    @NotBlank(message = "{notblank.err}")
    private String tenhang;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100, message = "{goods.tennguoinhan.err}")
    @Column(name = "tennguoinhan")
    @NotBlank(message = "{notblank.err}")
    private String tennguoinhan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255, message = "{goods.diachi.err}")
    @Column(name = "diachinhanhang")
    @NotBlank(message = "{notblank.err}")
    private String diachinhanhang;
    @Pattern(regexp = "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message = "Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 50, message = "{goods.email.err}")
    @Column(name = "email")
    @NotBlank(message = "{notblank.err}")
    private String email;
    // @Pattern(regexp = "^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message = "Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 10, message = "{goods.phone.err}")
    @Column(name = "phone")
    @NotBlank(message = "{notblank.err}")
    private String phone;
    @JoinColumn(name = "bustrip_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Bustrip bustripId;
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userId;

    public Goods() {
    }

    public Goods(Integer id) {
        this.id = id;
    }

    public Goods(Integer id, String tenhang, String tennguoinhan, String diachinhanhang) {
        this.id = id;
        this.tenhang = tenhang;
        this.tennguoinhan = tennguoinhan;
        this.diachinhanhang = diachinhanhang;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenhang() {
        return tenhang;
    }

    public void setTenhang(String tenhang) {
        this.tenhang = tenhang;
    }

    public String getTennguoinhan() {
        return tennguoinhan;
    }

    public void setTennguoinhan(String tennguoinhan) {
        this.tennguoinhan = tennguoinhan;
    }

    public String getDiachinhanhang() {
        return diachinhanhang;
    }

    public void setDiachinhanhang(String diachinhanhang) {
        this.diachinhanhang = diachinhanhang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Bustrip getBustripId() {
        return bustripId;
    }

    public void setBustripId(Bustrip bustripId) {
        this.bustripId = bustripId;
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
        if (!(object instanceof Goods)) {
            return false;
        }
        Goods other = (Goods) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.htn.pojo.Goods[ id=" + id + " ]";
    }

}