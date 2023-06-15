package com.example.ungdungtudien.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class DictionaryService implements IDictionaryService {
    @Override
    public String translate(String string) {
        String wordLCase = string.toLowerCase();
        String result = "Our dictionary is still under re so we don't have this word yet";
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
        for (String s : library.keySet()) {
            if (s.equals(wordLCase)) {
                result = library.get(s);
                break;
            }
        }
        return result;
    }
}
