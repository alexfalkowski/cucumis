module Cucumis
  module Capybara
    def safe_click(element)
      if %i[selenium chrome].include?(::Capybara.current_driver)
        element.click
      else
        element.trigger('click')
      end
    end
  end
end

World(Cucumis::Capybara)
