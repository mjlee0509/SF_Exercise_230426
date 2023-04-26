package com.icia.shopping.repository;

import com.icia.shopping.dto.ShoppingDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShoppingRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(ShoppingDTO shoppingDTO) {
        return sql.insert("Shopping.save", shoppingDTO);

    }

    public List<ShoppingDTO> findAll() {
        return sql.selectList("Shopping.findAll");
    }

    public void update(ShoppingDTO shoppingDTO) {
        sql.update("Shopping.update", shoppingDTO);
    }

    public ShoppingDTO findById(Long custno) {
        return sql.selectOne("Shopping.findById", custno);
    }

    public void delete(Long custno) {
        sql.delete("Shopping.delete", custno);
    }
}
