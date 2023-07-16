import Kongy17.ParabolaPlot040
myShapes model =
  [
    basic_interface
    , Kongy17.ParabolaPlot040.myShapes model.agfModel |> group |> scale 0.55 |> move (0,-15) |> GraphicSVG.map AGFMsg
    ,rect 20 10
    |> outlined (solid 1) (rgb 16 14 64)
    |> move (-41,15)
    , text "① Change the range for f(x) here"
      |> size 6
      |> filled (rgb 16 14 64)
      |> move (-75,24)
    ,rect 20 10 
    |> outlined (solid 1) (rgb 16 14 64)
    |> move (3,15)
    , text "② Modify your function here"
      |> size 6
      |> filled (rgb 16 14 64)
      |> move (-27,4)
      
  ]

type Msg = Tick Float GetKeyState
         | AGFMsg Kongy17.ParabolaPlot040.Msg

type alias Model = 
    { time : Float
    , a1 : Float
    , k1 : Float
    , c1 : Float
    , d1 : Float
    , agfModel : Kongy17.ParabolaPlot040.Model
    }

update msg model = case msg of
                     Tick t _ -> { model | time = t }
                     AGFMsg agfMsg ->  -- step 6
                        { model | agfModel = Kongy17.ParabolaPlot040.update agfMsg 
                                                            model.agfModel }

init = { time = 0 
       , a1 = 1
       , k1 = 1
       , c1 = 0
       , d1 = 0
       , agfModel = Kongy17.ParabolaPlot040.init
       }

main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)


basic_interface = group[
  rect 192 128
    |> filled (rgb 243 243 243)
  ,text "How to Use"
    |> filled blue
    |> scale 0.7
    |> move (-65,38)
  ,roundedRect 130 1 2
    |> filled black
    |> move (0, 32)
  


 
  
  ]
