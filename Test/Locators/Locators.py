__author__ = 'PAVAN'


class Locator:
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def get_register_link(self):
        xpath = "//a[contains(text(),'registration')]"
        return xpath
