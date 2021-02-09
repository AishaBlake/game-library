class CreateGames::V20210209153348 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Game) do
      primary_key id : Int64
      add_timestamps
    end
  end

  def rollback
    drop table_for(Game)
  end
end
