package lsh.spring4mvc.controller;

import lsh.spring4mvc.dao.PdsFactory;
import lsh.spring4mvc.service.FileUpDownUtil;
import lsh.spring4mvc.service.Today;
import lsh.spring4mvc.vo.Pds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Controller
public class PdsController {
    
    @Autowired
    private PdsFactory pdf;

    @RequestMapping(value = "/pds/plist", method = RequestMethod.GET)
    public String list(Model m){

        List<Pds> pds = pdf.getAllPds();

        m.addAttribute("pds",pds);
        m.addAttribute("cnt",pds.size());

        return "pds/plist";
    }

    @RequestMapping(value = "/pds/pview", method = RequestMethod.GET)
    public String view(Model m, String id){

        Pds p = pdf.getPdsById(Integer.parseInt(id));

        p.setPviews(p.getPviews()+1); // 조회수 증가

        m.addAttribute("p", p);

        return "pds/pview";
    }

    @RequestMapping(value = "/pds/pwrite", method = RequestMethod.GET)
    public String write(){

        return "pds/pwrite";
    }

    @RequestMapping(value = "/pds/pwrite", method = RequestMethod.POST)
    public String writeok(HttpServletRequest req, Pds p){
        // 글번호 생성해서 넣어줌
        Random rnd = new Random();
        int bdid = rnd.nextInt(100)+500;
        p.setPdsid(bdid);

        // 작성일 생성해서 넣어줌
        Today today = new Today();
        String regdete = today.getDateTime2();
        p.setPregdate(regdete);

        // 작성자 지정해서 넣어줌
        p.setPwriter("taeyeon");

        // 파일 업로드
        String myPath = "c:/Java/pdsupload/";
        Map<String, String> frmdata = FileUpDownUtil.procUpload(req, myPath);

        for(String key : frmdata.keySet()){
            String val = frmdata.get(key);

            switch (key) {
                case "psubject": p.setPsubject(val); break;
                case "pcontents": p.setPcontents(val); break;
                case "file1": p.setFile1(val); break;
            }
        }

        pdf.addPds(p);

        return "redirect:/pds/plist";
        // 다시 list 메소드 호출 (서버 재요청)
    }

    @RequestMapping(value = "/pds/pupdate", method = RequestMethod.GET)
    public String update(){
        return "pds/pupdate";
    }

    @RequestMapping(value = "/pds/showimg", method = RequestMethod.GET)
    public void showImg(HttpServletRequest req, HttpServletResponse rsp) throws IOException{

        req.setCharacterEncoding("utf-8");

        // 브라우저에 나타낼 이미지 경로 지정
        String f = req.getParameter("f");
        String fpath = "c:/Java/pdsupload/" + f;
        File imgFile = new File(fpath);
        // 이미지 출력을 위한 HTTP 헤더 지정
        rsp.setContentType("image/png");
        rsp.setHeader("Content-Disposition","inline; filename=" + imgFile);

        // 이미지 파일의 내용을 전송하기 위한 객체 생성
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(imgFile));
        ServletOutputStream sos = rsp.getOutputStream();

        // 이미지 파일의 내용을 스트링으로 전송
        byte buf[] = new byte[4*1024];
        int data = 0;
        while ((data = bis.read(buf)) != -1) {
            sos.write(buf, 0, data);
        }
        sos.flush();
        sos.close();
        bis.close();
    }

    @ResponseBody
    @RequestMapping(value = "/pds/download", method = RequestMethod.GET)
    public void downLoad(HttpServletRequest req, HttpServletResponse rsp) {
        String dPath = "C:/Java/pdsupload/";
        FileUpDownUtil.procDownload(req, rsp, dPath);
    }


}
