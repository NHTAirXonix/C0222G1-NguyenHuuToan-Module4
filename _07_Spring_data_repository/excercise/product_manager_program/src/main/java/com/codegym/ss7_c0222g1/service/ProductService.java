package com.codegym.ss7_c0222g1.service;



import com.codegym.ss7_c0222g1.model.Product;
import com.codegym.ss7_c0222g1.repository.IProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService implements IProductService {
    @Autowired
    private IProductRepository iProductRepository;

    @Override
    public List<Product> findAll() {
        return iProductRepository.findAll();
    }

    @Override
    public void save(Product product) {
        iProductRepository.save(product);
    }

    @Override
    public Optional<Product> findById(Integer id) {
        return iProductRepository.findById(id);
    }

    @Override
    public void deleteById(String  id) {
        iProductRepository.deleteById(id);
    }

    @Override
    public List<Product> searchByName(Product product) {
        return iProductRepository.searchByName(product.getName());
    }
}