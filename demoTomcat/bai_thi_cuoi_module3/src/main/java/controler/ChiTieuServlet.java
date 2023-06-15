package controler;

import model.ChiTieu;
import model.LoaiChiTieu;
import service.chiTieu.ChiTieuService;
import service.chiTieu.IChiTieuService;
import service.loaiChiTieu.ILoaiChiTieuService;
import service.loaiChiTieu.LoaiChiTieuService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ChiTieuServlet", value = "/chiTieu")
public class ChiTieuServlet extends HttpServlet {
    IChiTieuService chiTieuService = new ChiTieuService();
    ILoaiChiTieuService loaiChiTieuService = new LoaiChiTieuService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreate(request, response);
                break;
            default:
                showListChiTieu(request, response);
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<LoaiChiTieu> loaiChiTieuList = loaiChiTieuService.display();
        request.setAttribute("loaiChiTieuList", loaiChiTieuList);
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }

    private void showListChiTieu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ChiTieu> chiTieuList = chiTieuService.display();
        request.setAttribute("chiTieuList", chiTieuList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createChiTieu(request, response);
                break;
            case "delete":
                deleteChiTIeu(request, response);
                break;
        }
    }

    private void createChiTieu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String tenChiTieu = request.getParameter("tenChiTieu");
        String ngayChi = request.getParameter("ngayChi");
        long soTienChi = Long.parseLong(request.getParameter("soTienChi"));
        int idLoaiChiTieu = Integer.parseInt(request.getParameter("idLoaiChiTieu"));
        String moTaThem = request.getParameter("moTaThem");
        String tenLoaiChiTieu = "";
        for (LoaiChiTieu l : loaiChiTieuService.display()) {
            if (idLoaiChiTieu == l.getIdLoaiChiTieu()) {
                tenLoaiChiTieu = l.getTenLoaiChiTieu();
                break;
            }
        }
        LoaiChiTieu loaiChiTieu = new LoaiChiTieu(idLoaiChiTieu, tenLoaiChiTieu);
        ChiTieu chiTieu = new ChiTieu(tenChiTieu, ngayChi, soTienChi, loaiChiTieu, moTaThem);
        chiTieuService.create(chiTieu);
        response.sendRedirect("/chiTieu");
    }

    private void deleteChiTIeu(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String tenChiTieu2 = request.getParameter("tenChiTieuXoa");
        chiTieuService.delete(tenChiTieu2);
        response.sendRedirect("/chiTieu");
    }
}
