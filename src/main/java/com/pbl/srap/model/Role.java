package com.pbl.srap.model;
import jakarta.persistence.*;

@Entity
@Table(name = "roles")
public class Role {

    @Id
    @Column(name = "ccode", length = 50)
    private String ccode;

    @OneToOne
    @MapsId
    @JoinColumn(name = "ccode")
    private Club club;

    @Column(name = "crole1", length = 255)
    private String crole1;

    @Column(name = "crole2", length = 255)
    private String crole2;

    @Column(name = "crole3", length = 255)
    private String crole3;

    @Column(name = "crole4", length = 255)
    private String crole4;

    // Add remaining roles here...

    // Getters and Setters
    public String getCcode() { return ccode; }
    public void setCcode(String ccode) { this.ccode = ccode; }

    public String getCrole1() { return crole1; }
    public void setCrole1(String crole1) { this.crole1 = crole1; }

    public String getCrole2() { return crole2; }
    public void setCrole2(String crole2) { this.crole2 = crole2; }

    public String getCrole3() { return crole3; }
    public void setCrole3(String crole3) { this.crole3 = crole3; }

    public String getCrole4() { return crole4; }
    public void setCrole4(String crole4) { this.crole4 = crole4; }

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }
}
