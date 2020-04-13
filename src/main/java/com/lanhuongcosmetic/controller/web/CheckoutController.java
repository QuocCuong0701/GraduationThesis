package com.lanhuongcosmetic.controller.web;

import com.lanhuongcosmetic.model.BillDetailModel;
import com.lanhuongcosmetic.model.BillModel;
import com.lanhuongcosmetic.model.CategoryModel;
import com.lanhuongcosmetic.service.IBillDetailService;
import com.lanhuongcosmetic.service.IBillService;
import com.lanhuongcosmetic.service.ICategoryService;
import com.lanhuongcosmetic.service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = {"/checkout", "/checkout/order-received"})
public class CheckoutController extends HttpServlet {
    @Inject
    private IProductService iProductService;

    @Inject
    private ICategoryService iCategoryService;

    @Inject
    private IBillService iBillService;

    @Inject
    private IBillDetailService iBillDetailService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        String view = "";
        BillModel billModel;

        if (req.getRequestURI().endsWith("checkout")) {
            view = "/views/web/checkout/checkout.jsp";
        } else if (req.getRequestURI().endsWith("order-received")) {
            String bill_id = req.getParameter("bill_id");

            billModel = iBillService.findOne(Integer.parseInt(bill_id));

            BillDetailModel billDetailModel = new BillDetailModel();
            billDetailModel.setListResult(iBillDetailService.findBillDetailByBillId(Integer.parseInt(bill_id)));
            for (BillDetailModel bdm : billDetailModel.getListResult()) {
                iProductService.updateBuy(iProductService.findOneByProductId(bdm.getProduct_id()));
            }

            req.setAttribute("listBillDetail", billDetailModel);
            req.setAttribute("BillModel", billModel);
            view = "/views/web/checkout/orderReceived.jsp";
            httpSession.removeAttribute("model");
            httpSession.removeAttribute("totalQuantity");
            httpSession.removeAttribute("totalPrice");
        }

        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setListResult(iCategoryService.findAll());
        req.setAttribute("categories", categoryModel);

        RequestDispatcher rd = req.getRequestDispatcher(view);
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
