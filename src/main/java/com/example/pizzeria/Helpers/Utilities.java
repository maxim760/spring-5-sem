package com.example.pizzeria.Helpers;

import com.example.pizzeria.entity.CertificateEntity;
import com.example.pizzeria.entity.GoodsEntity;
import com.example.pizzeria.model.Goods;
import com.example.pizzeria.model.GoodsWithCount;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Component
public class Utilities {
    static public int ceil(int a) {
        return (int)Math.ceil((double)a);
    }

    static public SimpleDateFormat getDefaultDateFormat() {
        return new SimpleDateFormat("dd MMM yyyy HH:mm:ss");
    }

    static public List<CertificateEntity> sortCertificates(List<CertificateEntity> list) {
        SimpleDateFormat simpleDateFormat = getDefaultDateFormat();
        Collections.sort(list, (CertificateEntity o1, CertificateEntity o2) -> {
            try {
                return simpleDateFormat.parse(o2.getDateCreate()).compareTo(simpleDateFormat.parse(o1.getDateCreate()));
            } catch (ParseException e) {
                return 0;
            }
        });
        return list;
    }

    static public boolean hasProducts(Goods item) {
        return !item.getProducts().stream().anyMatch(i -> i.getCount() <= 0);
    }
    static public List<GoodsWithCount> getGoodsWithCount(List<GoodsEntity> list) {
        System.out.println("12345");
        return GoodsWithCount.toModel(list);
    }
}