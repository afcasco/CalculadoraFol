package dev.afcasco.controller;

import dev.afcasco.entitty.Prestacio;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrestacioController {

    @RequestMapping("newPrestacio")
    public String payrollForm(Model model){
        Prestacio.PrestacioBuilder builder = new Prestacio.PrestacioBuilder();
        model.addAttribute("builder",builder);
        return "prestacio-form";
    }

    @RequestMapping("prestacioAdded")
    public String processPayroll(@ModelAttribute("builder") Prestacio.PrestacioBuilder builder, Model model){
        Prestacio prestacio = builder.buid();
        model.addAttribute("prestacio",prestacio);
        return "prestacio-info";
    }
}