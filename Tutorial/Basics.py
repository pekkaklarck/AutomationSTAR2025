"""Module based library.

Has some interesting (??) keywords.
"""


from robot.api.deco import keyword
from robot.api import logger


def first_keyword(name):
    """Our first awesome keyword!"""
    print(f"Hello, {name}!")


def greet(name, greeting="Hello", ending="!"):
    print(f"{greeting}, {name}{ending}")


@keyword("${name} drinks ${amount} ${drink}")
def person_drinks_n_drinks(name, amount, drink):
    logger.info(f"{name} drinks {amount} {drink}")
    logger.debug(f"<b>{amount}</b> is too much!", html=True)
    logger.console(f'Hello, {name}!')


def return_something():
    return "something"


def should_be_positive(number: int | float):
    if number <= 0:
        raise AssertionError(f"{number} is not positive")
