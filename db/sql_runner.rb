require('pg')

# class SqlRunner
#   def self.run(sql, values = [])
#     begin
#       db = PG.connect({dbname: 'spending_tracker', host: 'localhost'})
#       db.prepare("query", sql)
#       result = db.exec_prepared("query", values)
#     ensure
#       db.close() if db != nil
#     end
#     return result
#   end
# end

class SqlRunner
  def self.run(sql, values = [])
    begin
      db = PG.connect({
        dbname: ENV['bduaciwn'],
        user: ENV['bduaciwn'],
        password: ENV['gVevIz8eX9cPzrejKBjRoYJu-88J4F4_'],
        host: ENV['horton.db.elephantsql.com'],
        port: ENV[5432]
      })
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end
end
