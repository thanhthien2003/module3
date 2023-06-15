package com.example.demo2.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingControler {
    @GetMapping("/greeting")
    public String greeting(@RequestParam String name, Model model){
        model.addAttribute("name",name);
    return "index";
}
}
