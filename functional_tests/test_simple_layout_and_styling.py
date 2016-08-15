from .base import FunctionalTest

class LayoutAndStylingTest(FunctionalTest):
  

    def test_layout_and_styling(self):
        # Edith goes to the home page
        self.browser.get(self.server_url)
        self.browser.set_window_size(1024, 768)

        # She notices the input box is nicely centered
        navbar = self.get_navbar_brand()
        self.assertAlmostEqual(
            navbar.location['x'] + navbar.size['width'] / 2,
            512,
            delta=5
        )