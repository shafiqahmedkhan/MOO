module PageObjects
  module Sections
    module HomePage
      class NavigationBar < SitePrism::Section

        element :search_box, '#query'
        element :search_btn, '.js-search-btn'

        def product_search product
          search_box.set product
          search_btn.click
        end

      end
    end
  end
end