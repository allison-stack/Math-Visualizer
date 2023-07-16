myShapes model =
  [
    basic_interface
    ,rect 170 85 |> outlined (solid 0.5) black |> move (5, -16)
    ,rect 1 74 |> filled black |> move (-5, -22)
    ,rect 170 12 |> filled blue |> move (5, 21) |> makeTransparent 0.5
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
  ,text "Definitions Page"
    |> filled blue
    |> scale 0.7
    |> move (-68,40)
  ,text1
  ,text2
  ,roundedRect 130 1 2
    |>filled black
    |> move (0, 32)
  ]
   
    
text1 = group[text "Common Integrals:"
    |> underline
    |> filled black |> move(-168,42) |> scale 0.45
    ,text "∫ k dx = k*x + c"
    |> filled black |> move(-190,20) |> scale 0.4
    ,text "∫ x^n dx = (1/(n+1)) * x^(n+1) + c"
    |> filled black |> move(-190,-5) |> scale 0.4
    ,text "∫ x^-1 dx = ∫ 1/x dx = ln|x| + c"
    |> filled black |> move(-190,-30) |> scale 0.4
    ,text "∫ e^x dx = e^x + c"
    |> filled black |> move(-190,-55) |> scale 0.4
    ,text "∫ cos x dx = sin x + c"
    |> filled black |> move(-190,-80) |> scale 0.4
    ,text "∫ sin x dx = -cos x + c"
    |> filled black |> move(-190,-105) |> scale 0.4
    ,text "∫ tan x dx = ln|sec x| + c"
    |> filled black |> move(-190,-130) |> scale 0.4
    ]
text2 = group[text "∫ sec x dx = ln|sec x| + c"
    |> filled black |> move(20,20) |> scale 0.4
    ,text "∫ (sec x)^2 dx = tan x + c"
    |> filled black |> move(20,-5) |> scale 0.4
    ,text "∫ (sec x)(tan x) dx = sec x + c"
    |> filled black |> move(20,-30) |> scale 0.4
    ,text "∫ (csc x)(cot x) dx = -csc x + c"
    |> filled black |> move(20,-55) |> scale 0.4
    ,text "∫ (csc x)^2 dx = -cot x + c"
    |> filled black |> move(20,-80) |> scale 0.4
    ,text "∫ 1/(a^2 + u^2) dx = 1/a * arctan(u/a) + c"
    |> filled black |> move(20,-105) |> scale 0.4
    ,text "∫ ln x dx = x * ln x - x + c"
    |> filled black |> move(20,-130) |> scale 0.4
    ]
button1 = group[
  rect 20 10
    |> filled white
    |> move (24,43)
  ,rect 21 11
    |> outlined (solid 1) gray
    |> move (24,43)
  ,text "About"
    |> filled (rgb 210 200 136)
    |> scale 0.6
    |> move (14.75,41)
  
  ]
  
button2 = group[
  rect 20 10
    |> filled white
    |> move (49,43)
  ,rect 21 11
    |> outlined (solid 1) gray
    |> move (49,43)
  ,text "Help"
    |> filled (rgb 210 200 136)
    |> scale 0.6
    |> move (42,41)
  ]
  
button3 = group[
  rect 27 10
    |> filled white
    |> move (77,43)
  ,rect 28 11
    |> outlined (solid 1) gray
    |> move (77,43)
  ,text "Example"
    |> filled (rgb 210 200 136)
    |> scale 0.6
    |> move (64,41)
  ]
