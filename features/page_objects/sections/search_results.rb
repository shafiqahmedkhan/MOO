module PageObjects
  module Sections
    module HomePage
      class SearchResults < SitePrism::Section

        elements :search_results, '.gs-result'

        def first_search_result
          search_results.first
        end

      end
    end
  end
end