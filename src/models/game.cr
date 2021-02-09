class Game < BaseModel
  table do
    column title : String
    column description : String?
    column publisher : String?
    column designer : String?
    column min_players : Int32
    column max_players : Int32
    column min_time : Int32
    column max_time : Int32
    column base_game : Array(Int64) = [] of Array(Int64)
    column game_family : Int64
    column msrp : Int32 = 0
    column quantity : Int32 = 1
    column tags : Array(String) = [] of Array(String)
  end
end
