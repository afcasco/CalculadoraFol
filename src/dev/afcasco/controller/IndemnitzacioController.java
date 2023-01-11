package dev.afcasco.controllor;

import dev.afcasco.entitty.Indemnitzacio;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndemnitzacioController {

    @RequestMapping("newIndemnitzacio")
    public String severanceForm(Model model){
        Indemnitzacio indemnitzacio = new Indemnitzacio();
        model.addAttribute(indemnitzacio);
        return "indemnitzacio-form";
    }

    @RequestMapping("indemnitzacioAdded")
    public String processSeverance(@ModelAttribute("indemnitzacio") Indemnitzacio indemnitzacio){
        indemnitzacio.calculate();
        return "indemnitzacio-info";
    }
}
