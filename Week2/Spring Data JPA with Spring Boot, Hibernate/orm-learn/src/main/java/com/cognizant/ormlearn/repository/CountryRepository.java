package com.cognizant.ormlearn.repository;
import org.springframework.data.jpa.repository.*;import org.springframework.stereotype.Repository;import com.cognizant.ormlearn.model.Country;
@Repository public interface CountryRepository extends JpaRepository<Country,String>{}