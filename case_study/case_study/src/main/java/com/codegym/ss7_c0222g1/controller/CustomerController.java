package com.codegym.ss7_c0222g1.controller;

import com.codegym.ss7_c0222g1.repository.customer.CustomerRepository;
import com.codegym.ss7_c0222g1.service.customer.CustomerService;
import com.codegym.ss7_c0222g1.service.customer.CustomerTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @Autowired
    private CustomerTypeService customerTypeService;

    @GetMapping("/customer/list")
    public String showList() {
        return "customer/CustomerList";
    }

}
