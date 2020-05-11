package com.lanhuongcosmetic.controller.web;

import com.lanhuongcosmetic.utils.PaymentServices;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/execute_payment")
public class ExecutePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        HttpSession httpSession = request.getSession();

        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.executePayment(paymentId, payerId);

            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);

            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);

            httpSession.removeAttribute("model");
            httpSession.removeAttribute("totalQuantity");
            httpSession.removeAttribute("totalPrice");

            request.getRequestDispatcher("/views/web/checkout/orderReceived.jsp").forward(request, response);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", "HÓA ĐƠN ĐÃ ĐƯỢC THANH TOÁN.");
            ex.getMessage();
            ex.printStackTrace();
            request.getRequestDispatcher("/views/web/404/404.jsp").forward(request, response);
        }
    }

}
