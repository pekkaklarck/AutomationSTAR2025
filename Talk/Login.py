from robot.api.types import Secret


def login(username: str, password: Secret):
    assert username == "robot" and password.value == "rf123"
