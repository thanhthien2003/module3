package com.example.ungdungtudien.repository;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class DictionaryRepository implements IDictionaryRepository{
    @Override
    public Map<String, String> library() {
        Map<String, String> library = new HashMap<>();
        library.put("apple", "Táo");
        library.put("banana", "Chuối");
        library.put("coconut", "Dừa");
        library.put("orange", "Cam");
        library.put("mango", "Xoài");
        library.put("cat", "Mèo");
        library.put("dog", "Chó");
        library.put("lion", "Sư tử");
        library.put("tiger", "Hổ");
        library.put("chicken", "Gà");
        library.put("pig", "Heo");
        return library;
    }
}
