package main.repository;

import main.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements main.repository.IProductRepository {

    @Override
    public List<Product> findAll() {
        String select = "SELECT m from product m";
        List<Product> productList = BaseRepository.entityManager.createQuery(select,Product.class).getResultList();
        return productList;
    }

//    @Override
//    public void save(Product product) {
//        productList.add(product);
//    }
//
//    @Override
//    public Product findById(int id) {
//        for (int i = 0; i < productList.size(); i++) {
//            if (id == productList.get(i).getId()) {
//                return productList.get(i);
//            }
//        }
//        return null;
//    }
//
//    @Override
//    public void update(int id, Product product) {
//        for (int i = 0; i < productList.size(); i++) {
//            if (id == productList.get(i).getId()) {
//                productList.get(i).setName(product.getName());
//                productList.get(i).setPrice(product.getPrice());
//                productList.get(i).setDetail(product.getDetail());
//                productList.get(i).setManufacturer(product.getManufacturer());
//            }
//        }
//    }
//
//    @Override
//    public void remove(int id) {
//        for (int i = 0; i < productList.size(); i++) {
//            if (id == productList.get(i).getId()) {
//                productList.remove(i);
//            }
//        }
//    }
//
//    @Override
//    public List<Product> searchByName(Product product) {
//        List<Product> listSearchByName = new ArrayList<>();
//        for (int i = 0; i < productList.size(); i++) {
//            if (productList.get(i).getName().contains(product.getName())) {
//                listSearchByName.add(productList.get(i));
//            }
//        }
//        return listSearchByName;
//    }
}
