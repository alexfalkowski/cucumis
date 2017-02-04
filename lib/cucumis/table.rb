module Cucumis
  module Table
    def table_diff!(expected, selector = '.table')
      rows = find(selector).all('tr')
      table = rows.map { |r| r.all('th,td').map { |c| c.text.strip } }
      expected.diff!(table)
    end
  end
end

World(Cucumis::Table)
