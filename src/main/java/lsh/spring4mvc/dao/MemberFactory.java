package lsh.spring4mvc.dao;


import lsh.spring4mvc.vo.Member;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

// 가입 회원 데이터를 생성하는 클래스
@Service("mbf")
public class MemberFactory {

    private ArrayList<Member> mbs = new ArrayList<>();

    public MemberFactory() {
        Member mb = new Member();
        mb.setMbrid("1");
        mb.setName("홍길동");
        mb.setJumin("123456-1234567");
        mb.setUserid("abcA123!!");
        mb.setPasswd("xyzA987@@");
        mb.setZipcode("123-456");
        mb.setAddr("서울시 강북구 미아동123");
        mb.setEmail("dad213@naver.com");
        mb.setHp("010-4521-2484");
        mb.setRegdate("2019-12-02 11:32:12");

        mbs.add(mb);

    }
    public ArrayList<Member> getAllMember(){
        return mbs;
    }

    public void addMember(Member mb){
        mbs.add(mb);
    }

    public String getPwdByUid(String uid){
        String pwd = "";
        for(Member m : mbs){
            if(m.getUserid().equals(uid)){
                pwd = m.getPasswd();
            }
        }
        return pwd;
    }
    // 아이디로 회원정보 가져오기
    public Member getMemberById(String uid){
        Member mb = null;
        for(Member m : mbs){
            if(m.getUserid().equals(uid)){
                mb = m;
            }
        }
        return mb;
    }

}
