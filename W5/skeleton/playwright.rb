require 'sqlite3'
require 'singleton'
require_relative 'plays.rb'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Playwright


def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    data.map{|datum| Play.new(datum)}
end

def self::find_by_name(name)
    PlayDBConnection.instance.execute("SELECT name FROM playwrights")
end

def initialize(options)
    @id = options['id']
    @name = options['title']
    @birth_year = options['birth_year']

end

def create 
    raise "#{self} already in database" if self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
        INSERT INTO
            playwrights(name, birth_year)
        VALUES
            (?, ?)
    SQL
    self.id = PlayDBConnection.instance.last_insert_row_id
end
def update
    raise "#{self} not in database" if !self.id
    PlayDBConnection.instance.execute(<<-SQL, self.name, self.birth_year)
        UPDATE
            plays
        SET
            name = ?, birth_year = ?
        WHERE
            id = ?

    SQL
end

def get_plays

    PlayDBConnection.instance.execute("SELECT plays FROM playwrights
    JOIN
       plays ON playwrights.id = plays.playwright_id
    WHERE
    name =#{name}")

end