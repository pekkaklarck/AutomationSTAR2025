class Dynamic:

    def get_keyword_names(self):
        """Return names of the keywords implemented by this library."""
        return ["Dynamic keyword", "Dynamic with arguments"]

    def run_keyword(self, name, args, named):
        """Run the specified keyword with the specified arguments.

        In the simplest case logic can be directly here, but in most cases
        logic is somewhere else and this method just handles dispatching.

        Reporting status, logging, returning values, etc. is handled just
        like in the static library API.
        """
        print(f"Running '{name}' with {args} and {named}.")

    def get_keyword_arguments(self, name):
        """Optional method to return keyword argument specification.

        Information is used during execution to check are arguments used
        correctly and by Libdoc when generating library documentation.

        Other optional methods exists for getting keyword documentation,
        types, etc.
        """
        if name == "Dynamic with arguments":
            return ["first", "second"]
        return []

