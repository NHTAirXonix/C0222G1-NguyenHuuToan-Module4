package com.codegym.ss7_c0222g1.repository.customer;

import com.codegym.ss7_c0222g1.model.customer.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CustomerRepository extends JpaRepository<Customer,Integer> {

    @Query(value = "select * from customer where status_delete = 0 ", nativeQuery = true)
    List<Customer> findAll();

}
