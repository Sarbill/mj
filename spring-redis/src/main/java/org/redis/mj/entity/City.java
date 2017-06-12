package org.redis.mj.entity;

import java.io.Serializable;

/**
 * Created by hx on 2017/1/24.
 */
public class City implements Serializable {

    private String id;
    private String citycode;
    private String cityjb;
    private String provincecode;
    private String state;
    private String cityname;
    private String city;
    private String province;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCitycode() {
        return citycode;
    }

    public void setCitycode(String citycode) {
        this.citycode = citycode;
    }

    public String getCityjb() {
        return cityjb;
    }

    public void setCityjb(String cityjb) {
        this.cityjb = cityjb;
    }

    public String getProvincecode() {
        return provincecode;
    }

    public void setProvincecode(String provincecode) {
        this.provincecode = provincecode;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }


}
