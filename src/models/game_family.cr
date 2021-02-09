class GameFamily < BaseModel
  table do
    column title : String
    column description : String?
  end
end
