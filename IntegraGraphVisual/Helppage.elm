myShapes model =
  [
    --background
    rect 192 128
    |> filled (rgb 243 243 243)
    ,
    double "Frequently Asked Question"
    |> move (0,30)
    ,
    rect 50 1
    |> filled grey
    |> move (-53,32)
    ,
    circle 1
    |> filled grey
    |> move (-20,32)
    ,
    rect 60 1
    |> filled grey
    |> move (17,32)
    ,
    text "Q: Why we choose riemann sum to estimate?"
    |> bold
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,20)
    ,
    text "A: It usually give more accurate approximations based"
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,10)
    ,
    text "on the number of rectangles and trapezoids."
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,0)
    ,
    text "Q: How to switch to midpoint approximations?"
    |> bold
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,-15)
    ,
    text "A: Go back to original page and enter the page"
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,-25)
    ,
    text "it should be refreshed and you can enter again"
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-79,-35)
    ,
    text "Any more questions please contact at"
    |> italic
    |> bold
    |> underline
    |> filled (rgb 227 87 22)
    |> scale 0.62
    |> move (-79,-47)
    ,
    text "wu509@mcmaster.ca or other group members"
    |> italic
    |> bold
    |> underline
    |> filled (rgb 227 87 22)
    |> scale 0.62
    |> move (-79,-58)
  ]

double x = [ text x
    |> filled (rgb 220 220 220)
    |> move (-79,10)
  ,text x
    |> filled (rgb 154 145 139)
    |> move (-80,10)]|>group

type Msg = Tick Float GetKeyState

type alias Model = { time : Float }

update msg model = case msg of
                     Tick t _ -> { time = t }

init = { time = 0 }

main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)



