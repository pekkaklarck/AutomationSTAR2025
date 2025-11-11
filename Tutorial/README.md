# Tutorial: Extending Robot Framework with Custom Libraries

This directory contains examples done as part of the [Extending Robot Framework with Custom Libraries](https://automation.eurostarsoftwaretesting.com/event/2025/extending-robot-framework-with-custom-libraries/) tutorial as well as the [introduction slides](slides.pdf).

## Installations

The following is needed to create and run the examples:

- Python 3.10 or newer.
- Robot Framework 7.0 or newer.
- Editor or IDE that supports Python and Robot Framework. VSCode or PyCharm with the [RobotCode plugin](https://robotcode.io/) is recommended.

## Topics

Following topics were covered:

- Creating a library as a module
- Accepting arguments, including embedded arguments
- Returning values
- Logging
- Reporting status using exceptions
- Argument conversion
- Creating a library as a class with possible state
- `@keyword` and `@library` decorators
- Dynamic library API
- Generating library documentation with [Libdoc](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#libdoc)

## Examples

- [Basics.py](Basics.py) and [basics.robot](basics.robot) cover the basics
  of the library API. That includes creating a library as a module, creating a keyword as a function, handling arguments, logging, returning values, argument conversion and reporting status.

- [CalculatorLibrary.py](CalculatorLibrary.py) and [calculator.robot](calculator.robot) demonstrate using a class based library with internal state. They use [calculator.py](calculator.py) as the system under test.

- [Dynamic.py](Dynamic.py) and [dynamic.robot](dynamic.robot) give a very quick introduction to the dynamic library API. This API is used, for example, by the [Remote library API](https://github.com/robotframework/RemoteInterface) and [PythonLibCore](https://github.com/robotframework/PythonLibCore) that in turn is used by [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) and several other bigger libraries.

- Libdoc usage can be tested, for example, by running `libdoc Basics.py Basics.html`.

## More information

Robot Framework library API is documented in detail in the
[Creating test libraries](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#creating-test-libraries)
section in the *Robot Framework User Guide*.
