'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = createElementWithOverride;

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function createElementWithOverride(overrides, type, props) {
  var typeWithOverride = (overrides || {})[type] || type;

  for (var _len = arguments.length, children = Array(_len > 3 ? _len - 3 : 0), _key = 3; _key < _len; _key++) {
    children[_key - 3] = arguments[_key];
  }

  return _react2.default.createElement.apply(_react2.default, [typeWithOverride, props].concat(children));
}
//# sourceMappingURL=createElementWithOverride.js.map