package lsh.spring4mvc.dao;


import lsh.spring4mvc.vo.Product;

import java.util.ArrayList;

public class ProductFactory {

    private ArrayList<Product> products = new ArrayList<>();

    // 기본 생성자
    public ProductFactory() {
        Product p1 = new Product();
        p1.setPrdid("P1234");
        p1.setPname("iPhone 6s");
        p1.setPprice(800000);
        p1.setPdesc("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        p1.setPmaker("Apple");
        p1.setPcate("Smart Phone");
        p1.setPstock(1000);
        p1.setPcond("New");
        p1.setPrdimg("P1234.png");

        Product p2 = new Product();
        p2.setPrdid("P1235");
        p2.setPname("LG PC 그램");
        p2.setPprice(1500000);
        p2.setPdesc("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
        p2.setPmaker("LG");
        p2.setPcate("Notebook");
        p2.setPstock(1000);
        p2.setPcond("Refurbished");
        p2.setPrdimg("P1235.png");

        Product p3 = new Product();
        p3.setPrdid("P1236");
        p3.setPname("Galaxy Tab S");
        p3.setPprice(900000);
        p3.setPdesc("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
        p3.setPmaker("Samsung");
        p3.setPcate("Tablet");
        p3.setPstock(1000);
        p3.setPcond("Old");
        p3.setPrdimg("P1236.png");

        products.add(p1);
        products.add(p2);
        products.add(p3);

    }

    // 모든 상품 데이터를 호출한 곳으로 전달
    public ArrayList<Product> getAllProducts(){
        return products;
    }

    // 상품의 상세 정보를 출력
    public Product getProductById(String id){
        Product prd = null;
        for(Product p : products){
            // ArrayList로 저장된 상품목록에서 전달받은 id와 일치하는 상품을 찾음
            if(p.getPrdid().equals(id)){
                prd = p;
                break;
            }
        }

        return prd;
    }

    // 상품 정보 추가
    public void addProduct(Product p){
        products.add(p);
    }
}
