"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.routersApi = void 0;
var category_Router_1 = __importDefault(require("./routersApi/category.Router"));
var products_Router_1 = __importDefault(require("./routersApi/products.Router"));
var favorite_Router_1 = __importDefault(require("./routersApi/favorite.Router"));
var user_Router_1 = __importDefault(require("./routersApi/user.Router"));
var discount_Router_1 = __importDefault(require("./routersApi/discount.Router"));
function routersApi(app) {
    app.use('/api/products', products_Router_1.default);
    app.use('/api/category', category_Router_1.default);
    app.use('/api/favorite', favorite_Router_1.default);
    app.use('/api/user', user_Router_1.default);
    app.use('/api/discount', discount_Router_1.default);
}
exports.routersApi = routersApi;
