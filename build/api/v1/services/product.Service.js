"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.productService = void 0;
var product_model_1 = require("../models/product.Model/product.model");
var ProductService = /** @class */ (function () {
    function ProductService() {
        var _this = this;
        this.getAll = function () { return __awaiter(_this, void 0, void 0, function () {
            var products, error_1;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.all()];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_1 = _a.sent();
                        throw new Error(error_1.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.getProductsByIDCategoryWithSetLimit = function (IDCategory, limit) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_2;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.getProductsByIDCategoryWithSetLimit(IDCategory, limit)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_2 = _a.sent();
                        throw new Error(error_2.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.getAllProductsByIDCategory = function (IDCategory) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_3;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.getAllProductsByIDCategory(IDCategory)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_3 = _a.sent();
                        throw new Error(error_3.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.getProductByIDProduct = function (IDProduct) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_4;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.getProductByIDProduct(IDProduct)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_4 = _a.sent();
                        throw new Error(error_4.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.searchProduct = function (search, sort, order, limit, offset, ordervalue, typeproduct, price, votes) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_5;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.searchProduct(search, sort, order, limit, offset, ordervalue, typeproduct, price, votes)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: [],
                                    message: 'can not find products',
                                    status: 200,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_5 = _a.sent();
                        throw new Error(error_5.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.countSearchProduct = function (search, sort, typeproduct, price, votes) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_6;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.countSearchProduct(search, sort, typeproduct, price, votes)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_6 = _a.sent();
                        throw new Error(error_6.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.productTrends = function (limit) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_7;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.productTrends(limit)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_7 = _a.sent();
                        throw new Error(error_7.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.productRanking = function (IDCategory, limit) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_8;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.productRanking(IDCategory, limit)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_8 = _a.sent();
                        throw new Error(error_8.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.favoriteList = function (IDUser) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_9;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.favoriteProduct(IDUser)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_9 = _a.sent();
                        throw new Error(error_9.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.getProductsByIDUser = function (IDUser) { return __awaiter(_this, void 0, void 0, function () {
            var products, error_10;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.getProductsByIDUser(IDUser)];
                    case 1:
                        products = _a.sent();
                        if (products === null) {
                            return [2 /*return*/, {
                                    data: null,
                                    message: 'can not find products',
                                    status: 400,
                                }];
                        }
                        return [2 /*return*/, {
                                data: products,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_10 = _a.sent();
                        throw new Error(error_10.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.addNewProduct = function (Product) { return __awaiter(_this, void 0, void 0, function () {
            var error_11;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.addNewProduct(Product)];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, {
                                data: true,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_11 = _a.sent();
                        throw new Error(error_11.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.addDetailBook = function (Book) { return __awaiter(_this, void 0, void 0, function () {
            var error_12;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.addDetailBook(Book)];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, {
                                data: true,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_12 = _a.sent();
                        throw new Error(error_12.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
        this.addDetailItem = function (Item) { return __awaiter(_this, void 0, void 0, function () {
            var error_13;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, product_model_1.productsModel.addDetailItem(Item)];
                    case 1:
                        _a.sent();
                        return [2 /*return*/, {
                                data: true,
                                message: 'Success',
                                status: 200,
                            }];
                    case 2:
                        error_13 = _a.sent();
                        throw new Error(error_13.messages);
                    case 3: return [2 /*return*/];
                }
            });
        }); };
    }
    return ProductService;
}());
exports.productService = new ProductService();
