"use strict";
// 3rd dependencies
var express_1 = require("express");
var productsRouter = (0, express_1.Router)();
// Middleware
// Controller
var products_Controller_1 = require("../../controllers/products.Controller");
//-------------------------------------------- api/products/... -------------------------------
//--------------------------------------------GET------------------------------------------
productsRouter.get('/all', products_Controller_1.productsController.getAllProduct);
productsRouter.get('/idcategory-limit', products_Controller_1.productsController.getProductsByIDCategoryWithSetLimit);
productsRouter.get('/idcategory', products_Controller_1.productsController.getAllProductsByIDCategory);
productsRouter.get('/idproduct', products_Controller_1.productsController.getProductByIDProduct);
productsRouter.get('/search', products_Controller_1.productsController.searchProduct);
productsRouter.get('/count-search', products_Controller_1.productsController.countSearchProduct);
productsRouter.get('/trend', products_Controller_1.productsController.productTrends);
productsRouter.get('/rank', products_Controller_1.productsController.productRanking);
productsRouter.get('/favorite-list', products_Controller_1.productsController.favoriteList);
productsRouter.get('/iduser', products_Controller_1.productsController.getProductsByIDUser);
//--------------------------------------------POST-----------------------------------------
productsRouter.post('/add-new-product', products_Controller_1.productsController.addNewProduct);
module.exports = productsRouter;
