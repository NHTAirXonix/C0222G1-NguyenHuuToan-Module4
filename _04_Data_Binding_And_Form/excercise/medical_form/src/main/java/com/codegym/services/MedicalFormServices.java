package com.codegym.services;

import com.codegym.model.MedicalForm;

import java.util.List;

public interface MedicalFormServices {
    List<MedicalForm> getAll();
    void save(MedicalForm medicalForm);

}
