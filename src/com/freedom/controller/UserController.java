package com.freedom.controller;

import com.freedom.pojo.User;
import com.freedom.service.UserService;
import com.freedom.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("list")
    public String list(Model model, Page page) {
        PageHelper.offsetPage(page.getStart(),page.getCount());
        List<User> users = userService.list();
        int total = (int) new PageInfo<>(users).getTotal();
        page.setTotal(total);
        model.addAttribute("users",users);
        return "list";
    }

    @RequestMapping("add")
    public String add(User user){
        userService.add(user);
        return "redirect:/list";
    }

    @RequestMapping("edit")
    public String edit(Model model,int id){
        User user = userService.get(id);
        model.addAttribute("user",user);
        return "edit";
    }

    @RequestMapping("update")
    public String update(User user){
        userService.update(user);
        return "redirect:/list";
    }

    @RequestMapping("delete")
    public String delete(int id){
        userService.delete(id);
        return "redirect:/list";
    }
}
