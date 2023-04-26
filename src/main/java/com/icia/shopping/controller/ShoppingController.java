package com.icia.shopping.controller;

import com.icia.shopping.dto.ShoppingDTO;
import com.icia.shopping.service.ShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ShoppingController {

    @Autowired
    public ShoppingService shoppingService;

    @GetMapping("/save")
    public String saveForm() {
        return "save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute ShoppingDTO shoppingDTO, Model model) {
        int saveResult = shoppingService.save(shoppingDTO);
        model.addAttribute("result", saveResult);
        return "saveResult";
    }

    @GetMapping("/list")
    public String findAll(Model model) {
        List<ShoppingDTO> shoppingDTOList = shoppingService.findAll();
        for (ShoppingDTO shoppingDTO : shoppingDTOList) {
            System.out.println("shoppingDTO = " + shoppingDTO);
        }
        model.addAttribute("memberList", shoppingDTOList);
        return "list";
    }

    @GetMapping("/update")
    public String updateForm(@RequestParam("custno") Long custno, Model model) {
        ShoppingDTO shoppingDTO = shoppingService.findById(custno);
        model.addAttribute("member", shoppingDTO);
        return "update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute ShoppingDTO shoppingDTO) {
        shoppingService.update(shoppingDTO);
        return "redirect:/update?custno="+shoppingDTO.getCustno(); // <-- 흠...
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("custno") Long custno) {
        shoppingService.delete(custno);
        return "redirect:/list";
    }


}
