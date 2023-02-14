package com.rochelle.session_demo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    
    @RequestMapping("/")
    public String index(HttpSession session) {
        session.setAttribute("name", "Chris");
        return "index.jsp";
    }

    // @RequestMapping("/surveys")
    // public String surveys() {
    //     // we do not render in session we redirect to where we want to go
    //     return "redirect:/";
    // }

    //? specify the type of request -> method=RequestMethod.POST -> import it 
    //~ did not work 
    // @RequestMapping(value="/surveys", method=RequestMethod.POST)
    // public String surveys(@RequestParam("name") String name, @RequestParam("location") String location) {
    //     // we do not render in session we redirect to where we want to go
    //     return "redirect:/";
    // }

    //~ try this way -> must import PostMapping
    /* 
    ~ Handling Forms
    -> need 2 routes 
        -> one to render the form
        -> one to handle the data when it comes back 
    */
    @PostMapping("/surveys")
    public String surveys(
        @RequestParam("name") String name, 
        @RequestParam("location") String location, 
        HttpSession session) {

        System.out.println(name);
        session.setAttribute("name", name);
        session.setAttribute("location", location);
        // we do not render in session we redirect to where we want to go
        return "redirect:/display";
    }

    @RequestMapping("/display")
    public String display() {
        return "display.jsp";
    }

    
    //? how to add name to session 
        // duplicate index.jsp -> rename to display and take out form 
        //Once in session it is always available
    
}
