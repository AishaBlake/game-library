class AddGameFamilyTable::V20210209150111 < Avram::Migrator::Migration::V1
  def migrate
    # Read more on migrations
    # https://www.luckyframework.org/guides/database/migrations
    
    create table_for(GameFamily) do
      primary_key id : Int64
      add_timestamps
    
      add title : String
      add description : String?
    end

  end

  def rollback
    drop table_for(GameFamily)
  end
end
