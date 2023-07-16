myShapes model =
  [
    basic_interface
  ]

type Msg = Tick Float GetKeyState

type alias Model = { time : Float }

update msg model = case msg of
                     Tick t _ -> { time = t }

init = { time = 0 }

main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)


basic_interface = group[
  rect 192 128
    |> filled (rgb 243 243 243)
  ,roundedRect 150 70 3
    |> filled grey
    |> move (2, -7)
  ,roundedRect 192 50 3
    |> filled (rgb 16 14 64)
    |> move (0, 50)
  ,circle 190
    |> filled (rgb 16 14 64)
    |> move (0, 190)
  ,text "Integral Graphing Calculator"
    |> filled white
    |> scale 0.7
    |> move (-88,45)
  ,roundedRect 150 70 3
    |> filled white
    |> move (0, -5)
  
  ,text_Welcome

  ]



text_Welcome = group[
  text "WELCOME"
    |> filled (rgb 220 220 220)
    |> move (-70,9)
    
  ,text "WELCOME"
    |> filled black
    |> move (-71,10)
  ,text "Choose an option to get started with"
    |> filled (rgb 86 86 86)
    |> scale 0.6
    |> move (-50,-5)
   ,text "integrating using Riemann Sums."
    |> filled (rgb 86 86 86)
    |> scale 0.6
    |> move (-50,-15)
  ]

