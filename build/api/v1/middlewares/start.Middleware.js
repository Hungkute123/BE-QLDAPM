"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.startMiddleware = void 0;
var express_1 = __importDefault(require("express"));
var cors_1 = __importDefault(require("cors"));
var helmet_1 = __importDefault(require("helmet"));
var hpp_1 = __importDefault(require("hpp"));
var express_rate_limit_1 = __importDefault(require("express-rate-limit"));
var morgan_1 = __importDefault(require("morgan"));
// import { passportMiddleware } from './passport.Middleware';
var passport_1 = __importDefault(require("passport"));
var cookie_parser_1 = __importDefault(require("cookie-parser"));
function startMiddleware(app) {
    // passportMiddleware(); // use passportjs
    app.use((0, morgan_1.default)('combined')); // check api
    app.use((0, cors_1.default)()); // open for all cors
    app.use((0, helmet_1.default)()); // secure http headers
    // get the last value if have the same key
    app.use((0, hpp_1.default)()); // api/user/?a=1&a=2 => req.query.a = ['1', '2']. If we have hpp => req.query.a = '2'
    // limit request from client
    app.enable('trust proxy');
    app.use((0, express_rate_limit_1.default)({
        windowMs: 60 * 1000,
        max: 500, // max is 500 request
    }));
    app.use((0, cookie_parser_1.default)()); // cookie-parser
    app.use(express_1.default.json()); // req.body-parser
    // initialize passport
    app.use(passport_1.default.initialize());
    app.use(passport_1.default.session());
}
exports.startMiddleware = startMiddleware;
