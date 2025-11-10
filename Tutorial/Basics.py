from robot.api.deco import keyword


def first_keyword(name):
    print(f"Hello, {name}!")


def greet(name, greeting="Hello", ending="!"):
    print(f"{greeting}, {name}{ending}")


@keyword("${name} drinks ${amount} ${drink}")
def person_drinks_n_drinks(name, amount, drink):
    print(f"{name} drinks {amount} {drink}")


