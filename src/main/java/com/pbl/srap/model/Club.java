package com.pbl.srap.model;

import jakarta.persistence.*;


@Entity
@Table(name = "clubs")
public class Club {

    @Id
    @Column(name = "ccode", length = 50)
    private String ccode;

    @Column(name = "cname", length = 255)
    private String cname;

    @Column(name = "clink", length = 255)
    private String clink;

    @Column(name = "ccontact", length = 255)
    private String ccontact;

    @Column(name = "cdesc", columnDefinition = "MEDIUMTEXT")
    private String cdesc;

    @Column(name = "cadvantages", columnDefinition = "MEDIUMTEXT")
    private String cadvantages;

    @Column(name = "copportunities", columnDefinition = "MEDIUMTEXT")
    private String copportunities;

    @OneToOne(mappedBy = "club", cascade = CascadeType.ALL)
    private Achievement achievement;

    @OneToOne(mappedBy = "club", cascade = CascadeType.ALL)
    private Role role;

    // Getters and Setters
    public String getCcode() { return ccode; }
    public void setCcode(String ccode) { this.ccode = ccode; }

    public String getCname() { return cname; }
    public void setCname(String cname) { this.cname = cname; }

    public String getCdesc() { return cdesc; }
    public void setCdesc(String cdesc) { this.cdesc = cdesc; }

    public String getCadvantages() { return cadvantages; }
    public void setCadvantages(String cadvantages) { this.cadvantages = cadvantages; }

    public String getCopportunities() { return copportunities; }
    public void setCopportunities(String copportunities) { this.copportunities = copportunities; }

    public Achievement getAchievement() { return achievement; }
    public void setAchievement(Achievement achievement) { this.achievement = achievement; }

    public Role getRole() { return role; }
    public void setRole(Role role) { this.role = role; }

    public String getClink() { return clink; }
    public void setClink(String clink) { this.clink = clink; }

    public String getCcontact() { return ccontact; }
    public void setCcontact(String ccontact) { this.ccontact = ccontact; }
}
