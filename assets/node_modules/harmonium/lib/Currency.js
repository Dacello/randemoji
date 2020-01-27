'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _react = require('react');

var _react2 = _interopRequireDefault(_react);

var _NumberFormatter = require('./NumberFormatter');

var _NumberFormatter2 = _interopRequireDefault(_NumberFormatter);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var Currency = function (_React$Component) {
  _inherits(Currency, _React$Component);

  function Currency() {
    _classCallCheck(this, Currency);

    return _possibleConstructorReturn(this, (Currency.__proto__ || Object.getPrototypeOf(Currency)).apply(this, arguments));
  }

  _createClass(Currency, [{
    key: 'render',
    value: function render() {
      return _react2.default.createElement(_NumberFormatter2.default, this.props);
    }
  }], [{
    key: 'propTypes',
    get: function get() {
      return _NumberFormatter2.default.propTypes;
    }
  }, {
    key: 'defaultProps',
    get: function get() {
      return {
        currency: 'USD',
        style: 'currency',
        minimumFractionDigits: 2,
        maxmimumFractionDigits: 2
      };
    }
  }]);

  return Currency;
}(_react2.default.Component);

exports.default = Currency;
//# sourceMappingURL=Currency.js.map