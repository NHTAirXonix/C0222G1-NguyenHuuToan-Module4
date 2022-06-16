package com.codegym.repository.imlp;

import com.codegym.model.MedicalForm;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class MedicalFormRepository implements com.codegym.repository.MedicalFormRepository {
    static List<MedicalForm> medicalFormList = new ArrayList<>();
    static {
        medicalFormList.add(new MedicalForm("Hao","1999","Nam","Viet Nam","123321","Car","123321","333","10/01/2022","10/03/2022","Da Nang"));
        medicalFormList.add(new MedicalForm("Hoang","1999","Nam","Viet Nam","123321","Car","123321","333","10/01/2022","10/03/2022","Da Nang"));
        medicalFormList.add(new MedicalForm("Duy","1999","Nam","Viet Nam","123321","Car","123321","333","10/01/2022","10/03/2022","Da Nang"));
        medicalFormList.add(new MedicalForm("Toan","1999","Nam","Viet Nam","123321","Car","123321","333","10/01/2022","10/03/2022","Da Nang"));
        medicalFormList.add(new MedicalForm("Khanh","1999","Nam","Viet Nam","123321","Car","123321","333","10/01/2022","10/03/2022","Da Nang"));

    }


    @Override
    public List<MedicalForm> getAll() {
        return medicalFormList;
    }

    @Override
    public void save(MedicalForm medicalForm) {
        medicalFormList.add(medicalForm);
    }
}


