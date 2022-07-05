package com.codegym.ss7_c0222g1.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {

    @GetMapping("/")
    public String index() {
        return "home";
    }

//    @GetMapping("/edit/{id}")
//    public String edit(@PathVariable Integer id, Model model) {
//        model.addAttribute("blog", iBlogService.findById(id));
//        model.addAttribute("listCategory", iCategoryService.findAll());
//        return "/editBlog";
//    }
//
//    @PostMapping("/update")
//    public String update(Blog blog) {
//        iBlogService.update(blog);
//        return "redirect:/list";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String delete(@PathVariable int id, Model model) {
//        model.addAttribute("blog", iBlogService.findById(id));
//        return "/deleteBlog";
//    }
//
//    @PostMapping("/delete")
//    public String delete(Blog blog, RedirectAttributes redirect) {
//        iBlogService.remove(blog.getIdBlog());
//        redirect.addFlashAttribute("success", "Removed blog successfully!");
//        return "redirect:/list";
//    }
//
//    @GetMapping("/view/{id}")
//    public String view(@PathVariable int id, Model model) {
//        model.addAttribute("blog", iBlogService.findById(id));
//        return "/viewBlog";
//    }
//
//    @GetMapping("/search")
//    public String search(@RequestParam(name = "page", defaultValue = "0") int page, Blog blog, Model model) {
//        Sort sort = Sort.by("create_day").ascending().and(Sort.by("blog_title"));
//        Page<Blog> blogList = iBlogService.findByTitleOfBlog(blog.getTitle(), PageRequest.of(page, 2, sort));
//        model.addAttribute("blog", new Blog());
//        model.addAttribute("blogList", blogList);
//        return "/listBlog";
//    }
}
