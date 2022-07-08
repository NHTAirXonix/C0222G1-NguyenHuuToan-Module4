package com.codegym.ss7_c0222g1.repository.Service;

import com.codegym.ss7_c0222g1.model.facility.Service;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

@Transactional
public interface ServiceRepository extends JpaRepository<Service, Integer> {

}
