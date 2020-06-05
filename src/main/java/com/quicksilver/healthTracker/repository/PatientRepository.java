package com.quicksilver.healthTracker.repository;

import com.quicksilver.healthTracker.model.Patient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends CrudRepository<Patient, Long> {

}
