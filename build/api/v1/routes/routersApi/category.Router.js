"use strict";
// 3rd dependencies
var express_1 = require("express");
var categoryRouter = (0, express_1.Router)();
// Middleware
// Controller
var category_Controller_1 = require("../../controllers/category.Controller");
//-------------------------------------------- api/category/... -------------------------------
//--------------------------------------------GET------------------------------------------
categoryRouter.get('/level', category_Controller_1.categoryController.getCategoryProductByLevel);
categoryRouter.get('/idparent', category_Controller_1.categoryController.getCategoryProductByIDParent);
categoryRouter.get('/idparent-limit', category_Controller_1.categoryController.getCategoryProductByIDParentwithSetLimit);
module.exports = categoryRouter;
