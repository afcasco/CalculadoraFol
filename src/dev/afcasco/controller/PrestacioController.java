package dev.afcasco.controller;

import dev.afcasco.entitty.Prestacio;
import dev.afcasco.entitty.PrestacioIncapacitat;
import dev.afcasco.entitty.PrestacioNaixement;
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

    @RequestMapping("newNaixement")
    public String naixementForm(Model model){
        PrestacioNaixement naixement = new PrestacioNaixement();
        model.addAttribute("naixement",naixement);
        return "prestacio-naixement-form";
    }

    @RequestMapping("naixementAdded")
    public String processNaixement(@ModelAttribute("naixement") PrestacioNaixement naixement){
        naixement.calculate();
        return "prestacio-naixement-info";
    }

    @RequestMapping("newIncapacitat")
    public String incapacitatForm(Model model){
        PrestacioIncapacitat incapacitat = new PrestacioIncapacitat();
        model.addAttribute("incapacitat",incapacitat);
        return "prestacio-incapacitat-form";
    }

    @RequestMapping("incapacitatAdded")
    public String processIncapacitat(@ModelAttribute("incapacitat") PrestacioIncapacitat incapacitat){
        return "prestacio-incapacitat-info";
    }
}