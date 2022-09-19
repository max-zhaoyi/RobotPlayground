import unittest


class customLib:
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self) -> None:
        self.global_arg = ""
        self.global_teardown_arg = "before teardown"
        self.global_setup_arg = "before setup"

    def custom_validate_args(self, numArg, strArg):
        tc = unittest.TestCase()
        tc.assertEqual(int(numArg), 0)
        tc.assertEqual(strArg, "Hello World")

    def global_store_arg(self, strArg):
        self.global_arg = strArg

    def global_read_arg(self):
        return self.global_arg

    def execute_teardown(self):
        self.global_teardown_arg = "after teardown"

    def global_read_teardown_arg(self):
        return self.global_teardown_arg

    def verify_arg_value(self, strArg):
        tc = unittest.TestCase()
        tc.assertEqual(strArg, "flksdjfwoef")
        # This function will throw exception

    def execute_setup(self):
        self.global_setup_arg = "after setup"

    def global_read_setup_arg(self):
        return self.global_setup_arg

    def execute_setup_test(self):
        self.global_setup_arg = "after test setup"
