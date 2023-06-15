package controler;

import model.Heo;
import model.NoiXuaXu;
import service.HeoService;
import service.IHeoService;
import service.INoiXuatXuService;
import service.NoiXuatXuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet(name = "SoHeoServlet", value = "/heo")
public class SoHeoServlet extends HttpServlet {
    IHeoService heoService = new HeoService();
   static INoiXuatXuService noiXuatXuService = new NoiXuatXuService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action==null){
                action="";
            }
            switch (action){
                case "create":
                    showListCreate(request, response);
                    break;
                case "edit":
                    break;
                case "delete":
                    break;
                case "searchById":
                    String maSoHeo = request.getParameter("string");
                    String xuatXu = request.getParameter("xuatXu");
                    List<Heo> heoList2 = heoService.findById(maSoHeo,xuatXu);
                    showListHeo(request,response,heoList2);
                    break;
                default:
                    List<Heo> heoList = heoService.display();
                    showListHeo(request, response, heoList);
                    break;

            }
    }

    private void showListCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NoiXuaXu> noiXuaXuList = noiXuatXuService.display();
        request.setAttribute("noiXuatXuList",noiXuaXuList);
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }

    private static void showListHeo(HttpServletRequest request, HttpServletResponse response, List<Heo> heoList) throws ServletException, IOException {
        List<NoiXuaXu> noiXuaXuList = noiXuatXuService.display();
        request.setAttribute("noiXuatXuList",noiXuaXuList);
        request.setAttribute("heoList", heoList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "create":
                createNewHeo(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                break;
        }
    }

    private void createNewHeo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSoHeo= request.getParameter("maSoHeo");
        String thoiGianNhapChuong= request.getParameter("thoiGianNhapChuong");
        int trongLuong= Integer.parseInt(request.getParameter("trongLuong"));
        String thoiGianXuatChuong= request.getParameter("thoiGianXuatChuong");
        int trongLuongXuatChuong= Integer.parseInt(request.getParameter("trongLuongXuatChuong"));
        int idXuatXu= Integer.parseInt(request.getParameter("idXuatXu"));
        String xuatXu = "";
        for (NoiXuaXu n: noiXuatXuService.display()) {
            if (n.getIdXuatXu()==idXuatXu){
                xuatXu=n.getXuatXu();
                break;
            }
        }
        NoiXuaXu noiXuaXu = new NoiXuaXu(idXuatXu,xuatXu);
        Boolean tinhTrang = false;
        if (trongLuong==trongLuongXuatChuong){
            tinhTrang = true;
        } else {
            tinhTrang=false;
        }
        Heo heo = new Heo(maSoHeo,thoiGianNhapChuong,trongLuong,thoiGianXuatChuong,trongLuongXuatChuong,noiXuaXu,tinhTrang);
        String result = "";
        boolean flag = heoService.create(heo,idXuatXu);
        if (flag){
            result = "them moi thanh cong";
            request.setAttribute("result",result);
            List<Heo> heoList = heoService.display();
            showListHeo(request, response,heoList);
        } else {
            result = "them moi khong thanh cong";
            request.setAttribute("result",result);
            showListCreate(request, response);
        }
    }
}
