package com.codegym.ss7_c0222g1.service.customer;

import com.codegym.ss7_c0222g1.model.customer.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ICustomerService {

    Page<Customer> findAll(Pageable pageable);

    void save(Customer customer);
}