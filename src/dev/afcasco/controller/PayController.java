package dev.afcasco.controllor;

import dev.afcasco.entitty.Payroll;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {

    @RequestMapping("/newPayroll")
    public String payrollForm(Model model){
        Payroll payroll = new Payroll();
        model.addAttribute("pay",payroll);
        return "payroll-form";
    }

    @RequestMapping("payrollAdded")
    public String processPayroll(@ModelAttribute("payroll") Payroll payroll){
        payroll.calculate();
        return "payroll-info";
    }
}
