import 'package:calculator/calculator_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final CalculatorLogic _logic = CalculatorLogic();
  String _display = '0';
  final String add = '+', sub = '-', mul = '×', div = '÷', perc = '%', sign = '+/-', ac = 'AC', dec = '.', eql = '=';
  final num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  
  void _updateDisplay() {
    setState(() {
      _display = _logic.getCurrentDisplay();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: DisplayScreen(value: _display),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcButton(
                      text: ac,
                      textColor: Colors.black,
                      backgroundColor: Colors.grey[700]!,
                      onPressed: () {
                        _logic.clear();
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: sign,
                      textColor: Colors.black,
                      backgroundColor: Colors.grey[700]!,
                      onPressed: () {
                        _logic.toggleSign(_display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: perc,
                      textColor: Colors.black,
                      backgroundColor: Colors.grey[700]!,
                      onPressed: () {
                        _logic.calculatePercent(_display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: div,
                      textColor: Colors.white,
                      backgroundColor: Colors.orange[500]!,
                      onPressed: () {
                        _logic.addOperation(div);
                        _updateDisplay();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcButton(
                      text: num[7],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[7], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[8],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[8], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[9],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[9], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: mul,
                      textColor: Colors.white,
                      backgroundColor: Colors.orange[500]!,
                      onPressed: () {
                        _logic.addOperation(mul);
                        _updateDisplay();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcButton(
                      text: num[4],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[4], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[5],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[5], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[6],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[6], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: sub,
                      textColor: Colors.white,
                      backgroundColor: Colors.orange[500]!,
                      onPressed: () {
                        _logic.addOperation(sub);
                        _updateDisplay();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcButton(
                      text: num[1],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[1], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[2],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[2], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: num[3],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[3], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: add,
                      textColor: Colors.white,
                      backgroundColor: Colors.orange[500]!,
                      onPressed: () {
                        _logic.addOperation(add);
                        _updateDisplay();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalcButton(
                      text: '',
                      icon: 'assets/icons/calculator_icon.svg',
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () => setState(() {}),
                    ),
                    CalcButton(
                      text: num[0],
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addNumber(num[0], _display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: dec,
                      textColor: Colors.white,
                      backgroundColor: Colors.grey[850]!,
                      onPressed: () {
                        _logic.addDecimal(_display);
                        _updateDisplay();
                      },
                    ),
                    CalcButton(
                      text: eql,
                      textColor: Colors.white,
                      backgroundColor: Colors.orange[500]!,
                      onPressed: () {
                        setState(() {
                          _display = _logic.calculate();
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 48)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  final String text;
  final String? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback onPressed;

  const CalcButton({
    super.key,
    required this.text,
    this.icon,
    this.backgroundColor,
    this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 90,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const CircleBorder(),
        ),
        child: FittedBox(
          child: icon != null
              ? SvgPicture.asset(
                  icon!,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn,),
                  width: 48,
                  height: 48,
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 48,
                    color: textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final String value;

  const DisplayScreen({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      alignment: Alignment.bottomRight,
      child: FittedBox(
        child: Text(
          value,
          style: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          textAlign: TextAlign.end,
          maxLines: 1,
        ),
      ),
    );
  }
}
