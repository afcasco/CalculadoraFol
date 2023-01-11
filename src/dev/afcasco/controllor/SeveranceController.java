package dev.afcasco.controllor;

import dev.afcasco.entitty.Payroll;
import dev.afcasco.entitty.Severance;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeveranceController {

    @RequestMapping("newSeverance")
    public String severanceForm(Model model){
        Severance severance = new Severance();
        model.addAttribute(severance);
        return "severance-form";
    }

    @RequestMapping("severanceAdded")
    public String processSeverance(@ModelAttribute("severance") Severance severance){
        severance.calculate();
        return "severance-info";
    }
}
