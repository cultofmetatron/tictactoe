require 'data_mapper'


    @db = 'sqlite://./databse.db'

    DataMapper.setup :default, "sqlite://#{Dir.pwd}/database.db"


    class User
        include DataMapper::Resource
        property :id, Serial
        property :name, String
        property :password, String

    end

    class Game
        include DataMapper::Resource
        property :id, Serial
        property :board, String
        property :created_at, DateTime


    end



    #DataMapper.finalize


    DataMapper.auto_upgrade!


