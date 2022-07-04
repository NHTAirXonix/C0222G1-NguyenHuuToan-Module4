package com.codegym.ss7_c0222g1.service.customer;

import com.codegym.ss7_c0222g1.model.customer.Customer;
import com.codegym.ss7_c0222g1.repository.customer.CustomerRepository;
import com.codegym.ss7_c0222g1.repository.customer.CustomerTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService implements ICustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void save(Customer customer) {
        customerRepository.save(customer);
    }
}
