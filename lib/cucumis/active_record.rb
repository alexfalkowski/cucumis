module Cucumis
  module ActiveRecord
    def trimmed_diff!(table, rows)
      table.diff! rows.all.map { |o| o.attributes.slice(*table.headers) }
    end
  end
end

World(Cucumis::ActiveRecord)
