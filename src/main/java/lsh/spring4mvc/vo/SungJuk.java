package lsh.spring4mvc.vo;

import java.io.Serializable;

// 자바빈즈 규칙에 맞춰 자바빈즈 클래스 작성
public class SungJuk implements Serializable {
    // private 멤버번수
    private String name;
    private int kor;
    private int eng;
    private int mat;

    // 기본 생성자
    public SungJuk() {}

    // setter/getter


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getKor() {
        return kor;
    }

    public void setKor(int kor) {
        this.kor = kor;
    }

    public int getEng() {
        return eng;
    }

    public void setEng(int eng) {
        this.eng = eng;
    }

    public int getMat() {
        return mat;
    }

    public void setMat(int mat) {
        this.mat = mat;
    }
}
