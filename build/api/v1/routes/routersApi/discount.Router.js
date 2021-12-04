"use strict";
// 3rd dependencies
var express_1 = require("express");
var discountRouter = (0, express_1.Router)();
// Middleware
// Controller
var discount_Controller_1 = require("../../controllers/discount.Controller");
//-------------------------------------------- api/discount/... -------------------------------
//--------------------------------------------GET------------------------------------------
discountRouter.get('/iduser', discount_Controller_1.discountController.getDiscountByIDUser);
discountRouter.get('/idproduct', discount_Controller_1.discountController.getDiscountByIDProduct);
//--------------------------------------------POST-----------------------------------------
discountRouter.post('/add-new-discount', discount_Controller_1.discountController.addNewDiscount);
module.exports = discountRouter;
