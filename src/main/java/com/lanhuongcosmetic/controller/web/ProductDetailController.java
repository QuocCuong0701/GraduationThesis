package com.lanhuongcosmetic.controller.web;

import com.lanhuongcosmetic.constant.SystemConstant;
import com.lanhuongcosmetic.model.CategoryModel;
import com.lanhuongcosmetic.model.ProductModel;
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
import java.io.IOException;

@WebServlet(urlPatterns = {"/product-detail"})
public class ProductDetailController extends HttpServlet {
    @Inject
    private IProductService iProductService;
    @Inject
    private ICategoryService iCategoryService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String product_id = req.getParameter("product_id");
        ProductModel productModel;
        productModel = iProductService.findOneByProductId(Integer.parseInt(product_id));
        iProductService.updateView(productModel);
        req.setAttribute(SystemConstant.MODEL, productModel);

        ProductModel similarProducts = FormUtil.toModel(ProductModel.class,req);
        similarProducts.setListResult(iProductService.listProduct(productModel.getCategory_id(), 1000));
        req.setAttribute("similarProducts",similarProducts);

        CategoryModel categoryModel = FormUtil.toModel(CategoryModel.class, req);
        categoryModel.setListResult(iCategoryService.findAll());
        req.setAttribute("categories", categoryModel);

        RequestDispatcher rd = req.getRequestDispatcher("/views/web/productDetail/productDetail.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
