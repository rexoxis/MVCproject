package lsh.spring4mvc.controller;

import lsh.spring4mvc.dao.MemberFactory;
import lsh.spring4mvc.service.CaptchaUtil;
import lsh.spring4mvc.service.Today;
import lsh.spring4mvc.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@Controller
public class JoinCotroller {

    @Autowired
    private MemberFactory mbf;

    @RequestMapping(value = "/join/agree", method = RequestMethod.GET)
    public String agree(){

        return "/join/agree";
    }

    @RequestMapping(value = "/join/checkme1", method = RequestMethod.GET)
    public String checkme1(){

        return "/join/checkme1";
    }

    @RequestMapping(value = "/join/checkme2", method = RequestMethod.GET)
    public String checkme2(){

        return "/join/checkme2";
    }

    @RequestMapping(value = "/join/joinmember", method = RequestMethod.GET)
    public String joinmember(){

//        String error = req.getParameter("error");
//
//        if(error != null && error.equals("9")){
//            error = "captcha가 일치하지 않습니다.";
//        } else {
//            error = "";
//        }
//
//        m.addAttribute("error", error);

        return "/join/joinmember";
    }

    @RequestMapping(value = "/join/joinmember", method = RequestMethod.POST)
    public String joinmemberok(Member mb, HttpServletRequest req, HttpSession sess) throws IOException {
        String viewPage = "redirect:/join/joinok";

        // captcha 일치여부 확인
        String mycap = req.getParameter("cap");
        String cap = (String)sess.getAttribute("cta");

        System.out.println(mycap + "/" + cap);

        String jumin1 = req.getParameter("jumin1");
        String jumin2 = req.getParameter("jumin2");

        String addr1 = req.getParameter("addr1");
        String addr2 = req.getParameter("addr2");

        String zip1 = req.getParameter("ziq1");
        String zip2 = req.getParameter("ziq2");

        String email1 = req.getParameter("email1");
        String email2 = req.getParameter("email2");

        String tel1 = req.getParameter("tel1");
        String tel2 = req.getParameter("tel2");
        String tel3 = req.getParameter("tel3");

        String jumin = jumin1 + "-" + jumin2;
        String zipcode = zip1 + "-" + zip2;
        String addr = addr1 + " " + addr2;
        String email = email1 + "@" + email2;
        String hp = tel1 + "-" + tel2 + "-" + tel3;

        Today t = new Today();
        String today = t.getDate()+" "+ t.getTime2();

        Random r = new Random();
        String mbid = (r.nextInt(500)+1)+"";

        mb.setUserid(mb.getUserid());
        mb.setMbrid(mbid);
        mb.setJumin(jumin);
        mb.setZipcode(zipcode);
        mb.setAddr(addr);
        mb.setEmail(email);
        mb.setHp(hp);
        mb.setRegdate(today);


        if(!mycap.equals(cap)){
            viewPage="redirect:/join/joinmember";
            sess.setAttribute("mb", mb);
            sess.setAttribute("capmsg", "자동가입방지 문자가 일치하지않습니다.");
        } else {
            mbf.addMember(mb);
        }

        return viewPage;
    }

    @ResponseBody
    @RequestMapping(value = "/join/showcaptcha", method = RequestMethod.GET)
    public void showcaptcha(HttpServletRequest req, HttpServletResponse rsp) throws IOException {
        CaptchaUtil.getCaptcha(req, rsp);
    }

}
