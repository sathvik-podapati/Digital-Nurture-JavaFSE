package com.cognizant.springlearn.util;

import java.io.InputStream;

import com.cognizant.springlearn.model.CountryList;

import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.Unmarshaller;

public class CountryUtil {

    public static CountryList getCountries() {

        try {

            JAXBContext context = JAXBContext.newInstance(CountryList.class);

            Unmarshaller unmarshaller = context.createUnmarshaller();

            InputStream is = CountryUtil.class.getClassLoader()
                    .getResourceAsStream("country.xml");

            return (CountryList) unmarshaller.unmarshal(is);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

}
