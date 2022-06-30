package com.codegym.ss7_c0222g1.controller;


import com.codegym.ss7_c0222g1.model.Blog;
import com.codegym.ss7_c0222g1.model.Category;
import com.codegym.ss7_c0222g1.service.IBlogService;
import com.codegym.ss7_c0222g1.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
@RequestMapping("/ajax")
public class AjaxController {

    @Autowired
    private IBlogService iBlogService;

    @Autowired
    private ICategoryService iCategoryService;

    @GetMapping("/list")
    public ResponseEntity<?> index(@RequestParam(name = "category", defaultValue = "") String category, @RequestParam(name = "page", defaultValue = "0") int page) {
        Sort sort = Sort.by("create_day").ascending().and(Sort.by("blog_title"));
        Page<Blog> blogList;
        if(!category.equals("")){
            blogList = iBlogService.findByIdCategory(iCategoryService.getId(category),PageRequest.of(page, 2, sort));
        } else {
            blogList = iBlogService.findAll(PageRequest.of(page, 2, sort));
        }
        return new ResponseEntity<>(blogList, HttpStatus.OK);
    }
}
