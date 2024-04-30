import std.stdio;
import std.conv;

void main()
{
    writeln("Simple Calculator in D");
    writeln("----------------------");
    writeln("Enter an expression (e.g., 2 + 3, 10 * 5, 20 / 4):");

    string input;
    readf("%s", &input);

    string[] parts = input.split(" ");
    if (parts.length != 3) {
        writeln("Invalid input");
        return;
    }

    auto operand1 = to!double(parts[0]);
    auto operand2 = to!double(parts[2]);
    char op = parts[1][0];
    double result;
    switch (op)
    {
        case '+':
            result = operand1 + operand2;
            break;
        case '-':
            result = operand1 - operand2;
            break;
        case '*':
            result = operand1 * operand2;
            break;
        case '/':
            if (operand2 == 0) {
                writeln("Error: Division by zero");
                return;
            }
            result = operand1 / operand2;
            break;
        default:
            writeln("Invalid operator");
            return;
    }

    writeln("Result: ", result);
}
