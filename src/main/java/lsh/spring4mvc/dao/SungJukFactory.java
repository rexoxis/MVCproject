package lsh.spring4mvc.dao;


import lsh.spring4mvc.vo.SungJuk;

import java.util.ArrayList;

// 학생 성적 데이터를 생성하는 클래스
public class SungJukFactory {

    // 성적 데이터들을 저장하기 위해 동적 배열 객체 생성
    private ArrayList<SungJuk> sungJuks = new ArrayList<>();

    // 기본 생성자 - 성적데이터를 직접입력
    public SungJukFactory() {
        SungJuk sj1 = new SungJuk();
        sj1.setName("수지");
        sj1.setKor(99);
        sj1.setEng(99);
        sj1.setMat(99);

        SungJuk sj2 = new SungJuk();
        sj2.setName("태연");
        sj2.setKor(88);
        sj2.setEng(88);
        sj2.setMat(88);

        SungJuk sj3 = new SungJuk();
        sj3.setName("보영");
        sj3.setKor(77);
        sj3.setEng(77);
        sj3.setMat(77);

        sungJuks.add(sj1);
        sungJuks.add(sj2);
        sungJuks.add(sj3);
    }

    // 모든 성적데이터를 호출한 곳으로 전달
    public ArrayList<SungJuk> getAllSungJuks(){
        return sungJuks;
    }
    // 성적데이터 상세보기

    // 성적 데이터 추가
    public void addSungJuk(SungJuk sj){
        sungJuks.add(sj);
    }
}
