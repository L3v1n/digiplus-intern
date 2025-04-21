class CalculatorLogic {
  String _firstNumber = '';
  String _secondNumber = '';
  String? _operation;
  bool _hasResult = false;

  void addNumber(String number, String currentDisplay) {
    if (_hasResult && _operation == null) {
      _firstNumber = number;
      _hasResult = false;
    }
    else if (_operation == null) {
      _firstNumber = currentDisplay == '0' ? number : currentDisplay + number;
    } else {
      _secondNumber += number;
    }
  }

  void addOperation(String operation) {
    if (_firstNumber.isNotEmpty) {
      _operation = operation;
    }
  }

  void clear() {
    _firstNumber = '';
    _secondNumber = '';
    _operation = null;
    _hasResult = false;
  }

void toggleSign(String currentDisplay) {
  if (_operation == null) {
    double value = -double.parse(currentDisplay);
    _firstNumber = value == value.toInt() ? value.toInt().toString() : value.toString();
  } else {
    double value = -double.parse(_secondNumber);
    _secondNumber = value == value.toInt() ? value.toInt().toString() : value.toString();
  }
}

  void addDecimal(String currentDisplay) {
    if (_operation == null && !_firstNumber.contains('.')) {
      _firstNumber = '$currentDisplay.';
    } else if (_operation != null && !_secondNumber.contains('.')) {
      _secondNumber += '.';
    }
  }

  void calculatePercent(String currentDisplay) {
    if (_operation == null) {
      _firstNumber = (double.parse(currentDisplay) / 100).toString();
    } else {
      _secondNumber = (double.parse(_secondNumber) / 100).toString();
    }
  }

  String calculate() {
    if (_firstNumber.isEmpty || _operation == null || _secondNumber.isEmpty) {
      return _firstNumber.isEmpty ? '0' : _firstNumber;
    }

    double num1 = double.parse(_firstNumber);
    double num2 = double.parse(_secondNumber);
    double result = 0;

    switch (_operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
        result = num1 * num2;
        break;
      case '÷':
        result = num2 != 0 ? num1 / num2 : double.nan;
        break;
      default:
        return _firstNumber;
    }

    _hasResult = true;
    _firstNumber = result.toString();
    _secondNumber = '';
    _operation = null;

    if (_firstNumber.contains('.')) {
      _firstNumber = _firstNumber.replaceAll(RegExp(r'\.0*$'), '');
    }
    return _firstNumber;
  }

  String getCurrentDisplay() {
    if (_operation == null) {
      return _firstNumber.isEmpty ? '0' : _firstNumber;
    } else {
      return '$_firstNumber${_operation ?? ''}$_secondNumber';
    }
  }
}