"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
// 3rd dependencies
var express_1 = __importDefault(require("express"));
var dotenv_1 = require("dotenv");
/*
Node-config reads configuration files in the ./config directory for the running process,
typically the application root.
This can be overridden by setting the $NODE_CONFIG_DIR environment variable
to the directory containing your configuration files.
It can also be set from node, before loading Node-config:
*/
var path_1 = __importDefault(require("path"));
process.env['NODE_CONFIG_DIR'] = path_1.default.join(__dirname, './config');
// get process.env
(0, dotenv_1.config)();
// server initialization
var app = (0, express_1.default)();
// set view engine
var ejsConfig_1 = require("./start/ejsConfig");
(0, ejsConfig_1.setViewEngine)(app);
// handle Middleware => cors, helmet,...
var start_Middleware_1 = require("./api/v1/middlewares/start.Middleware");
(0, start_Middleware_1.startMiddleware)(app);
//  router api
var start_Route_1 = require("./api/v1/routes/start.Route");
(0, start_Route_1.routersApi)(app);
var unexpectedError_Middleware_1 = require("./api/v1/middlewares/unexpectedError.Middleware");
app.use(unexpectedError_Middleware_1.unexpectedError);
app.use(express_1.default.static(path_1.default.join(__dirname, 'assets')));
// listen on port: default port = 5000
var PORT = parseInt(process.env.PORT, 10) || 5000;
app.listen(PORT, function () {
    console.log("http://localhost:" + PORT);
});
