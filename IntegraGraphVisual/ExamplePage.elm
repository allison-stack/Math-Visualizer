myShapes model =
  [rect 192 128
    |> filled (rgb 243 243 243)
   ,circle 80
     |> filled grey
     |> move (-49,-68)
   ,circle 80
     |> filled (rgb 16 14 64)
     |> move (-51,-71)
   ,circle 80
     |> filled grey
     |> move (40,-88)
   ,circle 80
     |> filled (rgb 16 14 64)
     |> move (40,-90)
   ,text "Examples"
     |> filled (rgb 16 14 64)
     |> move(-70,45)
   ,roundedRect 55 55 2
     |> filled white
     |> move(40,20)
   ,roundedRect 55 55 2
     |> filled white
     |> move(-40,-30)
   ,text "y = ∫ (-1/x^2)dx"
     |> fixedwidth
     |> filled (rgb 16 14 64)
     |> move(-110,50)
     |> scale 0.6
   ,text " = 1/x"
     |> fixedwidth
     |> filled (rgb 16 14 64)
     |> move(-102.5,30)
     |> scale 0.6
   ,totalLines
     |> move (40,20)
   ,totalLines2
     |> move (-40,-30)
   ,text "y = ∫ e^x dx"
     |> fixedwidth
     |> filled white
     |> move(0,-60)
     |> scale 0.6
   ,text " = e^x"
     |> fixedwidth
     |> filled white
     |> move(85,-60)
     |> scale 0.6]
 

totalLines = group[
  gridLine
    ,graph
    ,rectangles

  ]
gridLine = group[
  rect 50 50 
      |> filled white
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,8)
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,16)
   , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,-8)
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,-16)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (-16,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (-8,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (8,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (16,0)
   , rect 1 50
    |> filled black
   , rect 50 1
    |> filled black
    ]
graph = group [
    curve (2,24) [Pull (6,8) (24,2) ]
    |> outlined (solid 1) (rgb 204 204 255)
   ,curve (-2,-24) [Pull (-6,-8) (-24,-2) ]
    |> outlined (solid 1) (rgb 204 204 255)
  ]
rectangles = group[
    rect 3 20
      |> filled (rgba 153 204 255 0.8)
      |> move (2, 10.5)
     ,rect 3 14.5
      |> filled (rgba 153 204 255 0.8)
      |> move (5, 7.75)
     ,rect 3 10
      |> filled (rgba 153 204 255 0.8)
      |> move (8, 5.5)
     ,rect 3 7.75
      |> filled (rgba 153 204 255 0.8)
      |> move (11, 4.25)
     ,rect 3 5.75
      |> filled (rgba 153 204 255 0.8)
      |> move (14, 3.25)
     ,rect 3 3.75
      |> filled (rgba 153 204 255 0.8)
      |> move (17, 2.5)
     ,rect 3 2.5
      |> filled (rgba 153 204 255 0.8)
      |> move (20, 1.5)
     ,rect 3 20
      |> filled (rgba 153 204 255 0.8)
      |> move (-2, -10.5)
     ,rect 3 14.5
      |> filled (rgba 153 204 255 0.8)
      |> move (-5, -7.75)
     ,rect 3 10
      |> filled (rgba 153 204 255 0.8)
      |> move (-8, -5.5)
     ,rect 3 7.75
      |> filled (rgba 153 204 255 0.8)
      |> move (-11, -4.25)
     ,rect 3 5.75
      |> filled (rgba 153 204 255 0.8)
      |> move (-14, -3.25)
     ,rect 3 3.75
      |> filled (rgba 153 204 255 0.8)
      |> move (-17, -2.5)
     ,rect 3 2.5
      |> filled (rgba 153 204 255 0.8)
      |> move (-20, -1.5)
  ]
totalLines2 = group[
  gridLine2
    ,graph2
    ,rectangles2

  ]
gridLine2 = group[
  rect 50 50 
      |> filled white
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,8)
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,16)
   , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,-8)
  , rect 50 1
    |> filled (rgb 204 229 255)
    |> move (0,-16)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (-16,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (-8,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (8,0)
  , rect 1 50
    |> filled (rgb 204 229 255)
    |> move (16,0)
   , rect 1 50
    |> filled black
   , rect 50 1
    |> filled black
    ]
graph2 = group [
    curve (-25,1) [Pull (6,8) (8.8,24) ]
    |> outlined (solid 1) (rgb 204 204 255)
   
  ]
rectangles2 = group[
    rect 3 1
      |> filled (rgba 153 204 255 0.8)
      |> move (-20,1)
   ,rect 3 1.8
      |> filled (rgba 153 204 255 0.8)
      |> move (-17,1.3)
   ,rect 3 2.5
      |> filled (rgba 153 204 255 0.8)
      |> move (-14,1.8)
   ,rect 3 3.7
      |> filled (rgba 153 204 255 0.8)
      |> move (-11,2.25)
   ,rect 3 4.9
      |> filled (rgba 153 204 255 0.8)
      |> move (-8,2.9)
   ,rect 3 6.4
      |> filled (rgba 153 204 255 0.8)
      |> move (-5,3.6)
   ,rect 3 8
      |> filled (rgba 153 204 255 0.8)
      |> move (-2,4.4)
   ,rect 3 10
      |> filled (rgba 153 204 255 0.8)
      |> move (1,5.4)
   ,rect 3 12.5
      |> filled (rgba 153 204 255 0.8)
      |> move (4,6.7)
   ,rect 3 16
      |> filled (rgba 153 204 255 0.8)
      |> move (7,8.4)
   ,rect 3 21
      |> filled (rgba 153 204 255 0.8)
      |> move (10,11)
  ]


type Msg = Tick Float GetKeyState
         | NEXT 
         | PREVIOUS

type State = Example1 
           | Example2 

update msg model =
    case msg of
        Tick t _ ->
            { model | time = t }
        NEXT  ->
            case model.state of
                Example1  ->
                    { model | state = Example2  }

                otherwise ->
                    model
        PREVIOUS  ->
            case model.state of
                Example2  ->
                    { model | state = Example1  }

                otherwise ->
                    model

type alias Model =
    { time : Float
    , state : State
    }

type alias Point = (Float, Float)

init : Model
init = { time = 0 
       , state = Example1 
       }
    
main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)
