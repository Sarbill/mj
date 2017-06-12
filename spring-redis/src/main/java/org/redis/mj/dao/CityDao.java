package org.redis.mj.dao;

import org.redis.mj.entity.City;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by hx on 2017/1/24.
 */

@Repository
public interface CityDao {

    public void insertCity(City city);

    public List<City> queryCity(City city);

    public City queryCityByCode(String code);

    public int updateCity(City city);

    public int deleteCity(String code);
}
