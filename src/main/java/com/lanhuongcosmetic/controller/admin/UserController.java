package com.lanhuongcosmetic.controller.admin;

import com.lanhuongcosmetic.constant.SystemConstant;
import com.lanhuongcosmetic.model.UserModel;
import com.lanhuongcosmetic.paging.PageRequest;
import com.lanhuongcosmetic.paging.Pageble;
import com.lanhuongcosmetic.service.IUserService;
import com.lanhuongcosmetic.sort.Sorter;
import com.lanhuongcosmetic.utils.FormUtil;
import com.lanhuongcosmetic.utils.MessageUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-user"})
public class UserController extends HttpServlet {
    @Inject
    private IUserService iUserService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserModel userModel = FormUtil.toModel(UserModel.class, req);
        String view = "";
        if (userModel.getType().equals(SystemConstant.LIST)) {
            userModel.setListResult(iUserService.findAll());
            view = "/views/admin/user/list.jsp";
        }
        MessageUtil.showMessage(req);
        req.setAttribute(SystemConstant.MODEL, userModel);
        RequestDispatcher rd = req.getRequestDispatcher(view);
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
