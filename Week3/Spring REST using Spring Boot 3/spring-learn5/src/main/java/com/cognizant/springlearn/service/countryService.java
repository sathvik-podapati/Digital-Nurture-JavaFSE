package com.cognizant.springlearn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cognizant.springlearn.model.Country;
import com.cognizant.springlearn.model.CountryList;
import com.cognizant.springlearn.util.CountryUtil;

@Service
public class CountryService {

    public Country getCountry(String code) {

        CountryList countryList = CountryUtil.getCountries();

        List<Country> countries = countryList.getCountryList();

        return countries.stream()
                .filter(c -> c.getCode().equalsIgnoreCase(code))
                .findFirst()
                .orElse(null);
    }

}
