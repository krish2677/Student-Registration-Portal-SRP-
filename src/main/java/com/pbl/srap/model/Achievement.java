package com.pbl.srap.model;
import jakarta.persistence.*;

@Entity
@Table(name = "achievements")
public class Achievement {

    @Id
    @Column(name = "ccode", length = 50)
    private String ccode;

    @OneToOne
    @MapsId
    @JoinColumn(name = "ccode")
    private Club club;

    @Column(name = "cachiv1", length = 255)
    private String cachiv1;

    @Column(name = "cachiv2", length = 255)
    private String cachiv2;

    @Column(name = "cachiv3", length = 255)
    private String cachiv3;

    @Column(name = "cachiv4", length = 255)
    private String cachiv4;

    // Getters and Setters
    public String getCcode() { return ccode; }
    public void setCcode(String ccode) { this.ccode = ccode; }

    public String getCachiv1() { return cachiv1; }
    public void setCachiv1(String cachiv1) { this.cachiv1 = cachiv1; }

    public String getCachiv2() { return cachiv2; }
    public void setCachiv2(String cachiv2) { this.cachiv2 = cachiv2; }

    public String getCachiv3() { return cachiv3; }
    public void setCachiv3(String cachiv3) { this.cachiv3 = cachiv3; }

    public String getCachiv4() { return cachiv4; }
    public void setCachiv4(String cachiv4) { this.cachiv4 = cachiv4; }

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }
}
