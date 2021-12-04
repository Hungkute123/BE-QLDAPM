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
exports.productsModel = void 0;
var tables_1 = require("../../../../constants/tables");
var connectDB_1 = require("../../../../start/connectDB");
var ProductsModel = /** @class */ (function () {
    function ProductsModel() {
    }
    // lay tat ca san pham
    ProductsModel.prototype.all = function () {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                return [2 /*return*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS)];
            });
        });
    };
    ProductsModel.prototype.getProductsByIDCategoryWithSetLimit = function (IDCategory, limit) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " where IDCategory = " + IDCategory + " limit " + limit)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    ProductsModel.prototype.getAllProductsByIDCategory = function (IDCategory) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " where IDCategory = " + IDCategory)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    // chi tiet san pham theo id
    ProductsModel.prototype.getProductByIDProduct = function (IDProduct) {
        return __awaiter(this, void 0, void 0, function () {
            var rows, data;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " where IDProduct = '" + IDProduct + "'")];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0) {
                            return [2 /*return*/, null];
                        }
                        else {
                            data = void 0;
                            if (rows[0].TypeProduct === 'Book') {
                                data = connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " pd join " + tables_1.TBL_BOOKS + " bk on pd.IDProduct = bk.IDProduct where pd.IDProduct = '" + IDProduct + "'");
                            }
                            else {
                                data = connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " pd join " + tables_1.TBL_ITEMS + " bk on pd.IDProduct = bk.IDProduct where pd.IDProduct = '" + IDProduct + "'");
                            }
                            return [2 /*return*/, data];
                        }
                        return [2 /*return*/];
                }
            });
        });
    };
    ProductsModel.prototype.searchProduct = function (search, sort, order, limit, offset, ordervalue, typeproduct, price, votes) {
        return __awaiter(this, void 0, void 0, function () {
            var sql, whereCondition, index, rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        sql = "";
                        whereCondition = "";
                        if (search) {
                            whereCondition += "where match(NameProduct) against('" + search + "')";
                        }
                        if (price) {
                            index = price.indexOf('and');
                            if (index > 0) {
                                if (whereCondition)
                                    whereCondition += " and Price between " + price;
                                else
                                    whereCondition += "where Price between " + price;
                            }
                            else {
                                if (whereCondition)
                                    whereCondition += " and Price " + price;
                                else
                                    whereCondition += "where Price " + price;
                            }
                        }
                        if (typeproduct) {
                            if (whereCondition)
                                whereCondition += " and TypeProduct = '" + typeproduct + "'";
                            else
                                whereCondition += "where TypeProduct = '" + typeproduct + "'";
                        }
                        if (votes) {
                            if (whereCondition)
                                whereCondition += " and Votes = " + votes;
                            else
                                whereCondition += "where Votes = " + votes + "'";
                        }
                        switch (sort) {
                            case 'Bán Chạy Tuần':
                                break;
                            case 'Bán Chạy Tháng':
                                break;
                            case 'Bán Chạy Năm':
                                break;
                            case 'Nổi Bật Tuần':
                                break;
                            case 'Nổi Bật Tháng':
                                break;
                            case 'Nổi Bật Năm':
                                break;
                            case 'Chiết Khấu':
                                break;
                            case 'Giá Bán':
                                break;
                            case 'Mới Nhất':
                                break;
                            default:
                                sql = "select *\n\t\t\t\t\tfrom (\n\t\t\t\t\tselect * \n\t\t\t\t\tfrom " + tables_1.TBL_PRODUCTS + "\n\t\t\t\t\t" + whereCondition + "\n\t\t\t\t\torder by " + order + " " + ordervalue + "\n\t\t\t\t\tlimit " + limit + "\n\t\t\t\t\toffset " + offset + "\n\t\t\t\t   ) as p\n\t\t\t\t   ";
                                break;
                        }
                        console.log('mysql', sql);
                        return [4 /*yield*/, connectDB_1.database.load(sql)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    // phan trang
    ProductsModel.prototype.countSearchProduct = function (search, sort, typeproduct, price, votes) {
        return __awaiter(this, void 0, void 0, function () {
            var sql, whereCondition, index, rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        sql = "";
                        whereCondition = "";
                        if (search) {
                            whereCondition += "where match(NameProduct) against('" + search + "')";
                        }
                        if (price) {
                            index = price.indexOf('and');
                            if (index > 0) {
                                if (whereCondition)
                                    whereCondition += " and Price between " + price;
                                else
                                    whereCondition += "where Price between " + price;
                            }
                            else {
                                if (whereCondition)
                                    whereCondition += " and Price " + price;
                                else
                                    whereCondition += "where Price " + price;
                            }
                        }
                        if (typeproduct) {
                            if (whereCondition)
                                whereCondition += " and TypeProduct = '" + typeproduct + "'";
                            else
                                whereCondition += "where TypeProduct = '" + typeproduct + "'";
                        }
                        if (votes) {
                            if (whereCondition)
                                whereCondition += " and Votes = " + votes;
                            else
                                whereCondition += "where Votes = " + votes + "'";
                        }
                        switch (sort) {
                            case 'Bán Chạy Tuần':
                                break;
                            case 'Bán Chạy Tháng':
                                break;
                            case 'Bán Chạy Năm':
                                break;
                            case 'Nổi Bật Tuần':
                                break;
                            case 'Nổi Bật Tháng':
                                break;
                            case 'Nổi Bật Năm':
                                break;
                            case 'Chiết Khấu':
                                break;
                            case 'Giá Bán':
                                break;
                            case 'Mới Nhất':
                                break;
                            default:
                                sql = "select *\n                    from (\n                    select * \n                    from " + tables_1.TBL_PRODUCTS + "\n                    " + whereCondition + "\n                   ) as p\n                   ";
                                break;
                        }
                        return [4 /*yield*/, connectDB_1.database.load(sql)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows.length];
                }
            });
        });
    };
    ProductsModel.prototype.productTrends = function (limit) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + "\n\t\t\torder by View desc \n\t\t\tlimit " + limit)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    ProductsModel.prototype.productRanking = function (IDCategory, limit) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + "\n\t\t\twhere IDCategory = " + IDCategory + "\n\t\t\torder by Votes desc \n\t\t\tlimit " + limit)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    // favorite
    ProductsModel.prototype.favoriteProduct = function (IDUser) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " as a join " + tables_1.TBL_FAVORITE + " as b ON a.IDProduct = b.IDProduct\n\t\t\twhere IDUser = " + IDUser)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    ProductsModel.prototype.getProductsByIDUser = function (IDUser) {
        return __awaiter(this, void 0, void 0, function () {
            var rows;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, connectDB_1.database.load("select * from " + tables_1.TBL_PRODUCTS + " where IDUser = " + IDUser)];
                    case 1:
                        rows = _a.sent();
                        if (rows.length === 0)
                            return [2 /*return*/, null];
                        return [2 /*return*/, rows];
                }
            });
        });
    };
    ProductsModel.prototype.addNewProduct = function (Product) {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                return [2 /*return*/, connectDB_1.database.add(Product, tables_1.TBL_PRODUCTS)];
            });
        });
    };
    ProductsModel.prototype.addDetailBook = function (Book) {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                return [2 /*return*/, connectDB_1.database.add(Book, tables_1.TBL_BOOKS)];
            });
        });
    };
    ProductsModel.prototype.addDetailItem = function (Item) {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                return [2 /*return*/, connectDB_1.database.add(Item, tables_1.TBL_ITEMS)];
            });
        });
    };
    return ProductsModel;
}());
exports.productsModel = new ProductsModel();
