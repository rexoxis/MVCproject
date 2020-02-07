package lsh.spring4mvc.dao;


import lsh.spring4mvc.vo.Pds;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("pdf")
public class PdsFactory {
    private ArrayList<Pds> pdss = new ArrayList<>();

    public PdsFactory() {
        for(int i = 101; i>=82; i--){

            Pds p = new Pds();
            p.setPdsid(i);
            p.setPsubject("네이버와 함께하는 소프트웨어야 놀자 @춘천");
            p.setPwriter("dltmdgn");
            p.setPregdate("2019.07.15");
            p.setPthumbs(21);
            p.setPviews(18);
            p.setPcontents("지난 7-8월에 진행된 <네이버와 함께하는 엔트리 코딩캠프>와 동일한 교육입니다." +
                    "※<네이버와 함께하는 엔트리 코딩캠프>교육 수료자는 본 교육에 참여하실 수 없음을 안내드립니다." +
                    "    수업 신청 시 신청이 반려됩니다." +
                    "1. 모집 대상: 춘천시 초등학교에 재학중인 초등학교 3-4학년 학생과 학부모(보호자)" +
                    "*본 수업은 학생 1명과 보호자 1명이 함께 참석해야 합니다. " +
                    "*처음 소프트웨어 교육을 받는 학생을 대상으로 합니다." +
                    "2. 모집 인원: 선착순 20팀" +
                    "*매 회 학생 1명 + 학부모 1명 20팀(총 40명)을 선착순으로 선정합니다." +
                    "" +
                    "3. 모집 기간: 11/11(월) ~ 마감일까지" +
                    "* 대기자 포함하여 선착순으로 마감합니다. ");
            p.setFile1("splash.png");
            p.setFile2("splash.png");
            p.setFile3("splash.png");

            pdss.add(p);
        }

    }

    public ArrayList<Pds> getAllPds(){
        return pdss;
    }

    public Pds getPdsById(int id){
        Pds pd = null;
        for(Pds p : pdss){
            // ArrayList로 저장된 상품목록에서 전달받은 id와 일치하는 게시글을 찾음
            if(p.getPdsid() == id) {
                pd = p;
                break;
            }
        }

        return pd;
    }

    public void addPds(Pds p){
        pdss.add(p);
    }
}
