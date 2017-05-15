require 'site_prism'
require_relative 'sections/navigation_bar'
require_relative 'sections/search_results'

module PageObjects
  class HomePage < SitePrism::Page

    set_url 'https://www.moo.com/uk/'
    section :navigation_bar, PageObjects::Sections::HomePage::NavigationBar, '.u-pos-relative'
    section :search_results, PageObjects::Sections::HomePage::SearchResults, '#search-results'
  end
end