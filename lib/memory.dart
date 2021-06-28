class Memory {
  static const operations = const ["%", "/", "*", "-", "+", "="];

  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  String _operation = "";
  String _value = "0";
  bool _wipeValue = false;
  String? _lastDigit;

  void applyCommand(String digit) {

    if(_isReplacingOperation(digit)) {
      _operation = digit;
      return;
    }

    if (digit == "AC") {
      _allClear();
    } else if (operations.contains(digit)) {
      _setOperation(digit);
    } else {
      _addDigit(digit);
    }
    _lastDigit = digit;
  }

  _isReplacingOperation(String digit){
    return operations.contains(_lastDigit)
      && operations.contains(digit)
      && _lastDigit != "="
      && digit != "=";
  }

  _setOperation(String newOperation) {
    bool isEqualSign = newOperation == "=";

    if (_bufferIndex == 0) {
      if (!isEqualSign) {
        _operation = newOperation;
        _bufferIndex = 1;
        _wipeValue = true;
      }
    } else {
      _buffer[0] = _calculate();
      _buffer[1] = 0.0;
      _value = _buffer[0].toString();
      _value = _value.endsWith(".0") ? _value.split(".")[0] : _value;

      _operation = (isEqualSign ? null : newOperation)!;
      _bufferIndex = isEqualSign ? 0 : 1;
    }

    _wipeValue = true;
  }

  _addDigit(String command) {
    final isDot = command == ".";
    final wipeValue = (_value == "0" && !isDot) || _wipeValue;

    if (isDot && _value.contains(".") && !wipeValue) {
      return;
    }

    final emptyValue = isDot ? "0" : "";
    final currentValue = wipeValue ? emptyValue : _value;
    _value = currentValue + command;
    _wipeValue = false;

    _buffer[_bufferIndex] = double.tryParse(_value) ?? 0;
  }

  _allClear() {
    _value = "0";
    _buffer.setAll(0, [0.0, 0.0]);
    String? _operation;
    _operation = null;
    _operation = _operation;
    _bufferIndex = 0;
    _wipeValue = false;
  }

  _calculate() {
    switch (_operation) {
      case "%":
        return _buffer[0] % _buffer[1];
      case "/":
        return _buffer[0] / _buffer[1];
      case "*":
        return _buffer[0] * _buffer[1];
      case "-":
        return _buffer[0] - _buffer[1];
      case "+":
        return _buffer[0] + _buffer[1];
      default:
        return _buffer[0];
    }
  }

  String get value {
    return _value;
  }
}
