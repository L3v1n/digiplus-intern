void main(List<String> arguments) {
  print('=========== DART ACTIVITIES ===========');
  print('===== 1. Basic syntax =====');
  print('Hello, World!');

  print('\n===== 2. Variables and data types =====');
  print('PRIMIVITES:\n');

  // String
  String word = 'This is a string';
  print('String: $word');
  // int
  int number = 6;
  print('int: $number');
  // double
  double decimal = 1.23;
  print('double: $decimal');
  // bool
  bool isTrue = true;
  print('boolean: $isTrue');

  print('\nVARIABLES:\n');

  // String
  var varWord = 'This is a variable in string';
  print('variable String: $varWord');
  // int
  final varNumber = 9;
  print('final variable: $varNumber');
  // double
  const varDecimal = 4.56;
  print('const variable: $varDecimal');
  // bool
  late var varIsTrue = false;
  print('late boolean: $varIsTrue');

  print('\n===== 3. Conditional statements =====');
  int subs = 14;

  if (subs <= 6) {
    print('pH level $subs is acidic');
  } else if (subs == 7) {
    print('pH level $subs is neutral');
  } else if (subs >= 8 && subs <= 14) {
    print('pH level $subs is basic');
  } else {
    print('pH level $subs is invalid');
  }

  print('\n===== 4. Loops =====');

  List<Map<String, dynamic>> inventory = [
    {'item': 'Apple', 'quantity': 50},
    {'item': 'Banana', 'quantity': 8},
    {'item': 'Orange', 'quantity': 15},
    {'item': 'Mango', 'quantity': 3},
    {'item': 'Grapes', 'quantity': 20},
  ];

  print('Inventory Check Report:');
  for (var item in inventory) {
    if (item['quantity'] < 10) {
      print('Restock Alert: ${item['item']} - low stock (Only ${item['quantity']} left)');
    } else {
      print('${item['item']} - Stock is sufficient (${item['quantity']} items)');
    }
  }

  print('\n===== 5. Functions =====');
  double salary = 5000;
  double bonus = 1000;
  double deductions = 500;
  
  // Function to calculate salary
  double calculateGrossSalary(double salary, double bonus) {
    return salary + bonus;
  }
  double calculateNetSalary(double salary, double bonus, double deductions) {
    double grossSalary = salary + bonus;
    double netSalary = grossSalary - deductions;
    return netSalary;
  }

  print('Employee Salary Details:');
  print('Base Salary: \$$salary');
  print('Bonus: \$$bonus');
  print('Gross Salary: \$${calculateGrossSalary(salary, bonus)}');
  print('Deductions: \$$deductions');
  print('Net Salary: \$${calculateNetSalary(salary, bonus, deductions)}');

  print('\n===== 6. Enums and switch statements =====');

  final day = DaysOfTheWeek.monday;
  
  switch (day) {
    case DaysOfTheWeek.monday:
      print('☺️');
      break;
    case DaysOfTheWeek.tuesday:
      print('😄');
      break;
    case DaysOfTheWeek.wednesday:
      print('😁');
      break;
    case DaysOfTheWeek.thursday:
      print('🙂');
      break;
    case DaysOfTheWeek.friday:
      print('😅');
      break;
    case DaysOfTheWeek.saturday:
      print('😀');
      break;
    case DaysOfTheWeek.sunday:
      print('😂');
      break;
  }
}

enum DaysOfTheWeek{
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}