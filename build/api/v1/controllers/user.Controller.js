"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
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
exports.userController = void 0;
var jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
var bcrypt_1 = __importDefault(require("bcrypt"));
// dotenv
var dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
// Middlewares
var async_Middleware_1 = require("../middlewares/async.Middleware");
// Service
var user_Service_1 = require("../services/user.Service");
// Nodemailer
var generator = require('generate-password');
var nodemailer_1 = __importDefault(require("nodemailer"));
var UserController = /** @class */ (function () {
    function UserController() {
        var _this = this;
        //-----------------------------------GET----------------------------------
        this.login = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, email, password, Path, pass, ret, data, accessToken;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        query = req.query;
                        email = String(query.email);
                        password = String(query.pass);
                        Path = process.env.PATH_API;
                        return [4 /*yield*/, user_Service_1.userService.getPassword(email)];
                    case 1:
                        pass = _a.sent();
                        ret = bcrypt_1.default.compareSync(password, pass.Password);
                        if (!ret) return [3 /*break*/, 3];
                        return [4 /*yield*/, user_Service_1.userService.getUserByEmail(email)];
                    case 2:
                        data = _a.sent();
                        accessToken = jsonwebtoken_1.default.sign(__assign({}, data), process.env.ACCESS_TOKEN_SECRET, {
                            expiresIn: '300s',
                        });
                        res.json({ data: accessToken, message: 'Login success', Path: Path });
                        return [3 /*break*/, 4];
                    case 3:
                        res.json({ data: false, message: 'Login failed', Path: Path });
                        _a.label = 4;
                    case 4: return [2 /*return*/];
                }
            });
        }); });
        this.register = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, email, pass, Path, passCover, user, _a, data, message, status;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        query = req.query;
                        email = String(query.email);
                        pass = String(query.pass) || '';
                        Path = process.env.PATH_API;
                        passCover = bcrypt_1.default.hashSync(pass, Number(process.env.ROUNDS));
                        user = {
                            Email: email,
                            Password: passCover,
                            Active: 1,
                            TypeOfUser: 0,
                        };
                        return [4 /*yield*/, user_Service_1.userService.registerUser(user)];
                    case 1:
                        _a = _b.sent(), data = _a.data, message = _a.message, status = _a.status;
                        res.status(status).json({ data: data, message: message });
                        return [2 /*return*/];
                }
            });
        }); });
        this.sendOTP = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            var query, email, otp, transporter, mailOptions;
            return __generator(this, function (_a) {
                query = req.query;
                email = String(query.email);
                otp = generator.generate({
                    length: 6,
                    numbers: true,
                });
                transporter = nodemailer_1.default.createTransport({
                    host: 'smtp.gmail.com',
                    auth: {
                        user: process.env.MAIL,
                        pass: process.env.PASS, // generated ethereal password
                    },
                });
                mailOptions = {
                    from: 'Hệ thống Fahasa',
                    to: String(email),
                    subject: 'Xác nhận đăng ký tài khoản Fahasa ✔',
                    text: 'Chào mừng bạn đến với Fahasa',
                    html: '<b>Mã xác nhận OTP của bạn là : ' +
                        otp +
                        '<b>.Vui lòng không chia sẽ mã OTP với bất kỳ ai!',
                };
                transporter.sendMail(mailOptions, function (error, info) {
                    return __awaiter(this, void 0, void 0, function () {
                        var otpData, _a, data, message, status_1;
                        return __generator(this, function (_b) {
                            switch (_b.label) {
                                case 0:
                                    if (!error) return [3 /*break*/, 1];
                                    console.log(error);
                                    return [3 /*break*/, 3];
                                case 1:
                                    otpData = {
                                        Email: email,
                                        OTP: otp,
                                    };
                                    return [4 /*yield*/, user_Service_1.userService.createOTP(otpData, email)];
                                case 2:
                                    _a = _b.sent(), data = _a.data, message = _a.message, status_1 = _a.status;
                                    if (data) {
                                        res.status(status_1).json({ data: otp, isUser: data, message: message });
                                    }
                                    else {
                                        res.status(status_1).json({ data: '', isUser: data, message: message });
                                    }
                                    _b.label = 3;
                                case 3: return [2 /*return*/];
                            }
                        });
                    });
                });
                return [2 /*return*/];
            });
        }); });
        this.getInfo = (0, async_Middleware_1.asyncMiddleware)(function (req, res) { return __awaiter(_this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                res.status(200).json({ data: res.locals.data, message: 'Info' });
                return [2 /*return*/];
            });
        }); });
    }
    return UserController;
}());
exports.userController = new UserController();
