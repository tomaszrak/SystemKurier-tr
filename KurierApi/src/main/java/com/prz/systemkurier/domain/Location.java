package com.prz.systemkurier.domain;

import javax.persistence.*;

@Entity(name = "LOCATION")
public class Location {

    @Id
    @GeneratedValue(generator = "locationId", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "locationId", sequenceName = "LOCATION_ID_SEQ")
    private Long id;

    @Column(name = "STREET")
    private String street;

    @Column(name = "ADDRESS_NO")
    private String address;

    @Column(name = "CITY")
    private String city;

    @Column(name = "COUNTRY")
    private String country;

    @Column(name = "POSTAL_CODE")
    private String postal_code;


    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }
    public void setStreet(String street) {
        this.street = street;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostal_code() {
        return postal_code;
    }
    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }
}
