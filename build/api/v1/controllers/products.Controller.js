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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.productsController = void 0;
var multer_1 = __importDefault(require("multer"));
// Interfaces
// Middlewares
var async_Middleware_1 = require("../middlewares/async.Middleware");
// services
var product_Service_1 = require("../services/product.Service");
var generator = require('generate-password');
var ProductsController = /** @class */ (function () {
    function ProductsController() {
        var _this = this;
        //-----------------------------------GET----------------------------------
        this.getAllProduct = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var _a, data, message, status, Path;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, product_Service_1.productService.getAll()];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        Path = process.env.PATH_API;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.getProductsByIDCategoryWithSetLimit = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, IDCategory, Limit, Path, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        IDCategory = Number(query.IDCategory);
                        Limit = Number(query.limit);
                        Path = process.env.PATH_API;
                        return [4 /*yield*/, product_Service_1.productService.getProductsByIDCategoryWithSetLimit(IDCategory, Limit)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.getAllProductsByIDCategory = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, IDCategory, Path, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        IDCategory = Number(query.IDCategory);
                        Path = process.env.PATH_API;
                        return [4 /*yield*/, product_Service_1.productService.getAllProductsByIDCategory(IDCategory)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.getProductByIDProduct = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, IDProduct, Path, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        IDProduct = String(query.IDProduct);
                        Path = process.env.PATH_API;
                        return [4 /*yield*/, product_Service_1.productService.getProductByIDProduct(IDProduct)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.searchProduct = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, Search, Sort, Order, OrderValue, Limit, Page, Offset, Path, TypeProduct, Price, Votes, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        Search = String(query.search || '');
                        Sort = String(query.sort || '');
                        Order = String('Price');
                        OrderValue = String(query.orderby || 'ASC');
                        Limit = Number(query.limit || 48);
                        Page = Number(query.page || 0);
                        Offset = Page * Limit;
                        Path = process.env.PATH_API;
                        TypeProduct = String(query.typeproduct || '') === 'Sách, vở'
                            ? 'Book'
                            : String(query.typeproduct || '') === 'Dụng cụ học tập'
                                ? 'Item'
                                : '';
                        Price = String(query.price || '');
                        Votes = parseInt(String(query.votes || ''));
                        return [4 /*yield*/, product_Service_1.productService.searchProduct(Search, Sort, Order, Limit, Offset, OrderValue, TypeProduct, Price, Votes)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.countSearchProduct = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, Search, Sort, TypeProduct, Price, Votes, Path, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        Search = String(query.search) || '';
                        Sort = String(query.sort) || '';
                        TypeProduct = String(query.typeproduct || '') === 'Sách, vở'
                            ? 'Book'
                            : String(query.typeproduct || '') === 'Dụng cụ học tập'
                                ? 'Item'
                                : '';
                        Price = String(query.price || '');
                        Votes = parseInt(String(query.votes || ''));
                        Path = process.env.PATH_API;
                        return [4 /*yield*/, product_Service_1.productService.countSearchProduct(Search, Sort, TypeProduct, Price, Votes)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.productTrends = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, Limit, _a, data, message, status, Path;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        Limit = Number(query.limit) || 10;
                        return [4 /*yield*/, product_Service_1.productService.productTrends(Limit)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        Path = process.env.PATH_API;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.productRanking = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, IDCategory, Limit, _a, data, message, status, Path;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        IDCategory = Number(query.IDCategory);
                        Limit = Number(query.limit) || 5;
                        return [4 /*yield*/, product_Service_1.productService.productRanking(IDCategory, Limit)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        Path = process.env.PATH_API;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.favoriteList = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var _a, data, message, status, Path;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, product_Service_1.productService.favoriteList(1)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        Path = process.env.PATH_API;
                        res.status(status).send({ data: data, message: message, Path: Path });
                        return [2 /*return*/];
                }
            });
        }); });
        this.getProductsByIDUser = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0: return [4 /*yield*/, product_Service_1.productService.getProductsByIDUser(1)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).send({ data: data, message: message });
                        return [2 /*return*/];
                }
            });
        }); });
        this.addNewProduct = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var storage, upload;
            return __generator(this, function (_a) {
                storage = multer_1.default.diskStorage({
                    destination: function (req, file, cb) {
                        cb(null, './src/assets/images/product');
                    },
                    filename: function (req, file, cb) {
                        cb(null, Date.now() + '_' + file.originalname);
                    },
                });
                upload = (0, multer_1.default)({ storage: storage });
                upload.fields([
                    { name: 'cover_image', maxCount: 1 },
                    { name: 'image_one', maxCount: 1 },
                    { name: 'image_two', maxCount: 1 },
                    { name: 'image_three', maxCount: 1 },
                ])(req, res, function (err) {
                    return __awaiter(this, void 0, void 0, function () {
                        var id, CoverImage, ImageOne, ImageTwo, ImageThree, files, product, _a, data, message, status_1, Item, _b, data_1, message_1, status_2, Book;
                        return __generator(this, function (_c) {
                            switch (_c.label) {
                                case 0:
                                    if (!err) return [3 /*break*/, 1];
                                    console.log(err);
                                    return [3 /*break*/, 6];
                                case 1:
                                    console.log(req.body);
                                    id = generator.generate({
                                        length: 3,
                                        numbers: false,
                                    });
                                    CoverImage = '';
                                    ImageOne = '';
                                    ImageTwo = '';
                                    ImageThree = '';
                                    files = req.files;
                                    if (files['cover_image'] !== undefined) {
                                        CoverImage = files['cover_image'][0].filename;
                                    }
                                    if (files['image_one'] !== undefined) {
                                        ImageOne = files['image_one'][0].filename;
                                    }
                                    if (files['image_two'] !== undefined) {
                                        ImageTwo = files['image_two'][0].filename;
                                    }
                                    if (files['image_three'] !== undefined) {
                                        ImageThree = files['image_three'][0].filename;
                                    }
                                    product = {
                                        IDProduct: String(Date.now()) + String(id),
                                        IDUser: 1,
                                        IDCategory: Number(req.body.id_category),
                                        TypeProduct: req.body.type_product,
                                        NameProduct: req.body.product_name,
                                        Image: CoverImage,
                                        SubImageOne: ImageOne,
                                        SubImageTwo: ImageTwo,
                                        SubImageThree: ImageThree,
                                        Price: req.body.product_price,
                                        Weight: req.body.product_weight,
                                        PackagingSize: req.body.product_package_size,
                                        Description: req.body.description,
                                        Quantity: Number(req.body.product_quantity),
                                        Status: Number(req.body.status),
                                    };
                                    return [4 /*yield*/, product_Service_1.productService.addNewProduct(product)];
                                case 2:
                                    _a = _c.sent(), data = _a.data, message = _a.message, status_1 = _a.status;
                                    if (data === true) {
                                        res.status(status_1).send({ data: data, message: message });
                                    }
                                    else {
                                        res.status(status_1).send({ data: false, message: message });
                                    }
                                    if (!(req.body.type_product === 'Item' && data === true)) return [3 /*break*/, 4];
                                    Item = {
                                        IDProduct: product.IDProduct,
                                        Origin: req.body.product_origin,
                                        Trademark: req.body.product_trademark,
                                        ProcessingPlace: req.body.product_processing_place,
                                        Supplier: req.body.product_supplier,
                                        Color: req.body.product_color,
                                        Material: req.body.product_material,
                                    };
                                    return [4 /*yield*/, product_Service_1.productService.addDetailItem(Item)];
                                case 3:
                                    _b = _c.sent(), data_1 = _b.data, message_1 = _b.message, status_2 = _b.status;
                                    console.log(data_1);
                                    return [3 /*break*/, 6];
                                case 4:
                                    if (!(req.body.type_product === 'Book' && data === true)) return [3 /*break*/, 6];
                                    Book = {
                                        IDProduct: product.IDProduct,
                                        Author: req.body.product_author,
                                        Supplier: req.body.product_supplier,
                                        PublishingCompany: req.body.product_publishing_company,
                                        CoverForm: req.body.product_cover_form,
                                        Translator: req.body.product_translator,
                                        PublishingYear: req.body.product_publishing_year,
                                        NumberOfPage: req.body.product_number_of_page,
                                    };
                                    return [4 /*yield*/, product_Service_1.productService.addDetailBook(Book)];
                                case 5:
                                    _c.sent();
                                    _c.label = 6;
                                case 6: return [2 /*return*/];
                            }
                        });
                    });
                });
                return [2 /*return*/];
            });
        }); });
    }
    return ProductsController;
}());
exports.productsController = new ProductsController();
