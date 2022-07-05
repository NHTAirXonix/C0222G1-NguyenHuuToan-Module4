package com.codegym.ss7_c0222g1.controller;

import com.codegym.ss7_c0222g1.model.Blog;
import com.codegym.ss7_c0222g1.model.customer.Customer;
import com.codegym.ss7_c0222g1.model.customer.CustomerType;
import com.codegym.ss7_c0222g1.repository.customer.CustomerRepository;
import com.codegym.ss7_c0222g1.service.customer.CustomerService;
import com.codegym.ss7_c0222g1.service.customer.CustomerTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @Autowired
    private CustomerTypeService customerTypeService;

//    @GetMapping("/list")
//    public String showList(Model model) {
//        model.addAttribute("customer", new Customer());
//        model.addAttribute("customerList", customerService.findAll());
//        return "customer/CustomerList";
//    }

    @GetMapping("/create")
    public String showFormAddCustomer(Model model) {
        List<CustomerType> customerTypeList = customerTypeService.findAll();
        model.addAttribute("customer", new Customer());
        model.addAttribute("customerTypeList", customerTypeList);
        return "customer/CustomerAdd";
    }

    @PostMapping("/save")
    public String save(Customer customer) {
        customerService.save(customer);
        return "redirect:/customer/list";
    }

}
