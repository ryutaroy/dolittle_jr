module Dolittle
  def self.load(*args)

    # args
    # database name, table name, infile_name
    dbname = args[0][0]
    tbl    = args[0][1]
    infile = args[0][2]

    # parameter
    username  = 'root'
    password  = 'rakuten'
    separator = ','

    # SQL
    load_sql = %Q{LOAD DATA LOCAL INFILE "#{infile}" INTO TABLE #{tbl} FIELDS TERMINATED BY "#{separator}"}
    puts load_sql
    puts "Loading..."

    # SQL execute
    result = system(%Q{mysql #{dbname} -u #{username} --password="#{password}" -e '#{load_sql}';})
    puts result

  end
end

if __FILE__ == $0
  Dolittle.load
end
