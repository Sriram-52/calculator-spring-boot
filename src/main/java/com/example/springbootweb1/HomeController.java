package com.example.springbootweb1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @ModelAttribute("course")
    public String getCourseName() {
        return "JAVA";
    }

    @RequestMapping("/")
    public ModelAndView home(ModelAndView modelAndView) {
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/calculator")
    public ModelAndView calculator(Calculator calculator, ModelAndView modelAndView) {
        int num1 = calculator.getNum1();
        int num2 = calculator.getNum2();
        String operation = calculator.getOperation();
        // Perform the operation
        int result = 0;
        switch (operation) {
            case "add":
                result = num1 + num2;
                break;
            case "subtract":
                result = num1 - num2;
                break;
            case "multiply":
                result = num1 * num2;
                break;
            case "divide":
                result = num1 / num2;
                break;
        }

        modelAndView.addObject("result", result);
        modelAndView.setViewName("result");
        return modelAndView;
    }
}
