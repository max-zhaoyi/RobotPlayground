class customLib:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self) -> None:
        self.global_arg = ""
        self.global_teardown_arg = "before teardown"

    def custom_validate_args(self, numArg, strArg):
        tmp = int(numArg) == 0 and strArg == "Hello World"
        return tmp

    def global_store_arg(self, strArg):
        self.global_arg = strArg

    def global_read_arg(self):
        return self.global_arg

    def execute_teardown(self):
        self.global_teardown_arg = "after teardown"

    def global_read_teardown_arg(self):
        return self.global_teardown_arg
