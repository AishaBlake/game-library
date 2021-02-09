class CreateGameFamilies::V20210209154127 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(GameFamily) do
      primary_key id : Int64
      add_timestamps
    end
  end

  def rollback
    drop table_for(GameFamily)
  end
end
