package com.lanhuongcosmetic.controller.web;

import com.lanhuongcosmetic.model.BillDetailModel;
import com.lanhuongcosmetic.model.BillModel;
import com.lanhuongcosmetic.model.CategoryModel;
import com.lanhuongcosmetic.service.IBillDetailService;
import com.lanhuongcosmetic.service.IBillService;
import com.lanhuongcosmetic.service.ICategoryService;
import com.lanhuongcosmetic.service.IProductService;
import com.lanhuongcosmetic.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

@WebServlet(urlPatterns = {"/checkout", "/checkout/order-received"})
public class CheckoutController extends HttpServlet {
    @Inject
    private IProductService iProductService;

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
            String user_id = req.getParameter("user_id");
            String date = req.getParameter("created_date");

            long milisec = Long.parseLong(date);
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Timestamp ts = new Timestamp(milisec);

            if (user_id != null) {
                billModel = iBillService.findOneByIdAndDate(Integer.parseInt(user_id), Timestamp.valueOf(df.format(ts)));
            } else {
                billModel = iBillService.findOneByDate(Timestamp.valueOf(df.format(ts)));
            }
            if (billModel == null) {
                ts = new Timestamp(milisec + 1000);
                if (user_id != null) {
                    billModel = iBillService.findOneByIdAndDate(Integer.parseInt(user_id), Timestamp.valueOf(df.format(ts)));
                } else {
                    billModel = iBillService.findOneByDate(Timestamp.valueOf(df.format(ts)));
                }
            }
            BillDetailModel billDetailModel = new BillDetailModel();
            billDetailModel.setListResult(iBillDetailService.findBillDetailByBillId(billModel.getBill_id()));
            for(BillDetailModel bdm : billDetailModel.getListResult()){
                iProductService.updateBuy(iProductService.findOneByProductId(bdm.getProduct_id()));
            }

            req.setAttribute("BillModel", billModel);
            view = "/views/web/checkout/orderReceived.jsp";
            //httpSession.invalidate();
        }

        RequestDispatcher rd = req.getRequestDispatcher(view);
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
