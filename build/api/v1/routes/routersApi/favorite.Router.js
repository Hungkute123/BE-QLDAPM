"use strict";
// 3rd dependencies
var express_1 = require("express");
var favoriteRouter = (0, express_1.Router)();
// Middleware
// Controller
var favorite_Controller_1 = require("../../controllers/favorite.Controller");
//-------------------------------------------- api/favorite/... -------------------------------
favoriteRouter.get('/add-to-favorite', favorite_Controller_1.favoritesController.addItemToFavorite);
module.exports = favoriteRouter;
