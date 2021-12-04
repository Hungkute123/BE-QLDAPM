"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.database = void 0;
var mysql_1 = __importDefault(require("mysql"));
var config_1 = __importDefault(require("../config/config"));
var util_1 = __importDefault(require("util"));
var pool = mysql_1.default.createPool({
    host: config_1.default.mysql.host,
    port: config_1.default.mysql.port,
    user: config_1.default.mysql.user,
    password: config_1.default.mysql.pass,
    database: config_1.default.mysql.database,
    connectionLimit: 50,
});
pool.getConnection(function (err, connection) {
    if (err) {
        console.log(err);
        throw err;
    }
    connection.on('error', function (err) {
        throw err;
        return;
    });
});
var pool_query = util_1.default.promisify(pool.query).bind(pool);
var Database = /** @class */ (function () {
    function Database() {
    }
    Database.prototype.load = function (sql) {
        return pool_query(sql);
    };
    Database.prototype.add = function (entity, tableName) {
        var query = {
            sql: "insert into ".concat(tableName, " set ?"),
            values: [entity]
        };
        return pool_query(query);
    };
    Database.prototype.del = function (condition, tableName) {
        var query = {
            sql: "delete from ".concat(tableName, " where ?"),
            values: [condition]
        };
        return pool_query(query);
    };
    Database.prototype.patch = function (entity, condition, tableName) {
        var query = {
            sql: "update ".concat(tableName, " set ? where ?"),
            values: [entity, condition]
        };
        return pool_query(query);
    };
    return Database;
}());
exports.database = new Database();
