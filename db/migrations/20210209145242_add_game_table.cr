class AddGameTable::V20210209145242 < Avram::Migrator::Migration::V1
  def migrate
    # Read more on migrations
    # https://www.luckyframework.org/guides/database/migrations
    
    create table_for(Game) do
      primary_key id : Int64
      add_timestamps
    
      add title : String
      add description : String?
      add publisher : String?
      add designer : String?
      add min_players : Int32
      add max_players : Int32
      add min_time : Int32
      add max_time : Int32
      add base_game : Array(Int64)
      add game_family : Int64
      add msrp : Int32
      add quantity : Int32
      add tags : Array(String)?
    end

  end

  def rollback
    drop table_for(Game)
  end
end
