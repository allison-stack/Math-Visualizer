myShapes model =
  [
    basic_interface
    ,rect 170 85 |> outlined (solid 0.5) black |> move (5, -16)
    ,rect 170 12 |> filled blue |> move (5, 21) |> makeTransparent 0.5
    ,rect 170 12 |> filled blue |> move (5, -12) |> makeTransparent 0.5
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
   
    
text1 = group[text "Definite Integrals:"
    |> underline
    |> filled black |> move(-168,42) |> scale 0.45
    ,text "∫ f(x) dx with bounds [a,b] = lim n->∞ Σ f(xk)Δx from [1,n]"
    |> filled black |> move(-190,20) |> scale 0.4
    ,text "where Δx = (b-a)/n  and xk = a + kΔx"
    |> filled black |> move(-190,0) |> scale 0.4
    ,text "Approximating Definite Integrals:"
    |> underline
    |> filled black |> move(-168,-30) |> scale 0.45
    ,text "Left: Ln = ΔxΣ f(xk) from [0, n-1]"
    |> filled black |> move(-190,-63) |> scale 0.4
    ,text "Right: Rn = ΔxΣ f(xk) from [1, n]"
    |> filled black |> move(-190,-87) |> scale 0.4
    ,text "Midpoint rule: ΔxΣ f((xk + xk+1)/2) from [0, n-1]"
    |> filled black |> move(-190,-112) |> scale 0.4
    ]
text2 = group[
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
