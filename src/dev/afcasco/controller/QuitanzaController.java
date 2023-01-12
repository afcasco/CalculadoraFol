package dev.afcasco.controller;

import dev.afcasco.entitty.Quitzanza;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuitanzaController {
    @RequestMapping("newQuitanza")
    public String payrollForm(Model model){
        Quitzanza quitzanza = new Quitzanza();
        model.addAttribute("quitanza",quitzanza);
        return "quitanza-form";
    }

    @RequestMapping("quitanzaAdded")
    public String processPayroll(@ModelAttribute("quitanza") Quitzanza quitzanza){
        quitzanza.calculate();
        return "quitanza-info";
    }
}
