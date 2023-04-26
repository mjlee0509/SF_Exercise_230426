package com.icia.shopping.service;

import com.icia.shopping.dto.ShoppingDTO;
import com.icia.shopping.repository.ShoppingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Service
public class ShoppingService {
    @Autowired
    public ShoppingRepository shoppingRepository;

    public int save(ShoppingDTO shoppingDTO) {
        int result = shoppingRepository.save(shoppingDTO);
        return result;
    }


    public List<ShoppingDTO> findAll() {
        List<ShoppingDTO> shoppingDTOList = shoppingRepository.findAll();
        if (shoppingDTOList.size() == 0) {
            return null;
        } else {
            return shoppingDTOList;
        }
    }

    public void update(ShoppingDTO shoppingDTO) {
        shoppingRepository.update(shoppingDTO);
    }

    public ShoppingDTO findById(Long custno) {
        ShoppingDTO shoppingDTO = shoppingRepository.findById(custno);
        return shoppingDTO;
    }

    public void delete(Long custno) {
        shoppingRepository.delete(custno);
    }
}
