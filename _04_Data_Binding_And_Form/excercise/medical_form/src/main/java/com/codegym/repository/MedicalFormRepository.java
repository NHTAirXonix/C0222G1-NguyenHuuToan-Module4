package com.codegym.repository;

import com.codegym.model.MedicalForm;

import java.util.List;

public interface MedicalFormRepository {
    List<MedicalForm> getAll();
    void save(MedicalForm medicalForm);
}
