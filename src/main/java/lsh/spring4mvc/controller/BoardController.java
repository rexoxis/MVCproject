package lsh.spring4mvc.controller;

import lsh.spring4mvc.dao.BoardFactory;
import lsh.spring4mvc.service.Today;
import lsh.spring4mvc.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Random;

@Controller
public class BoardController {

    @Autowired
    private BoardFactory bdf;

    @RequestMapping(value = "/board/list", method = RequestMethod.GET)
    public String list(Model m){

        List<Board> bds = bdf.getAllboards();

        m.addAttribute("bds",bds);
        m.addAttribute("cnt",bds.size());

        return "board/list";
    }

    @RequestMapping(value = "/board/view", method = RequestMethod.GET)
    public String view(Model m, String id){

        Board b = bdf.getBoardById(Integer.parseInt(id));

        b.setViews(b.getViews()+1); // 조회수 증가

        m.addAttribute("b", b);

        return "board/view";
    }

    @RequestMapping(value = "/board/write", method = RequestMethod.GET)
    public String write(){

        return "board/write";
    }

    @RequestMapping(value = "/board/write", method = RequestMethod.POST)
    public String writeok(Board b){
        // 글번호 생성해서 넣어줌
        Random rnd = new Random();
        int bdid = rnd.nextInt(100)+500;
        b.setBdid(bdid);

        // 작성일 생성해서 넣어줌
        Today today = new Today();
        String regdete = today.getDateTime2();
        b.setRegdate(regdete);

        // 작성자 지정해서 넣어줌
        b.setWriter("taeyeon");

        bdf.addBoard(b);

        return "redirect:/board/list";
        // 다시 list 메소드 호출 (서버 재요청)
    }

    @RequestMapping(value = "/board/update", method = RequestMethod.GET)
    public String update(){
        return "board/update";
    }


}
