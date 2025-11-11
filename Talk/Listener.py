def start_library_keyword(data, implementation, result):
    if (
        implementation.full_name == 'BuiltIn.Log'
        and data.args[0] == 'Hello, Amsterdamn!'
    ):
        data.args = result.args = ['Hello, Amsterdam!']


def start_user_keyword(data, implementation, result):
    if implementation.name == "Greet":
        implementation.body.create_keyword(
            name="Log",
            args=["Added by listener!"]
        )
