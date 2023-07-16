import Sauroc.Proto4AboutPageL1 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=41ba5113-474c-4f0c-a542-d46ffdb4dca8
import Sauroc.Proto4AboutPageR -- https://cs1xd3.online/ShowModulePublish?modulePublishId=4cce33d4-fc38-47ef-86c9-1a3dca40aa83
import Sauroc.Proto4AboutPageM -- https://cs1xd3.online/ShowModulePublish?modulePublishId=834baec9-1e75-4504-9a79-10dcf372d1a1

myShapes model =
  [
    rect 192 128
    |> filled (rgb 243 243 243),
    
    Sauroc.BasicGrid.myShapes model |> group
    |> scale 0.2
    |> move (70, 35),
    
    Sauroc.Proto4AboutPageL1.myShapes model |> group
    |> scaleX 0.25
    |> scaleY 0.25
    |> move (-65, -35),
    
    Sauroc.Proto4AboutPageR.myShapes model |> group
    |> scaleX 0.25
    |> scaleY 0.25
    |> move (0, -35),
    
    Sauroc.Proto4AboutPageM.myShapes model |> group
    |> scaleX 0.25
    |> scaleY 0.25
    |> move (65, -35),
    
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
  text "About"
    |> filled (rgb 16 14 16)
    |> move (-37,50)
  ,text_Heading
  ,text_Body
  , underline grey
  ,exampleCurve1
  |> move (0, -1)
  
  ]
  
underline fill = group[
  line (0,0) (60,0)
  |> outlined (solid 1) fill
  |> move (-90, 45),
  
  line (0,0) (60,0)
  |> outlined (solid 1) fill
  |> move (-15, 45),
  
  circle 1
  |> filled fill
  |> move (-21.5, 45)
  
  ]

  
  

  

text_Heading = group[
  text "WHAT IS A RIEMANN SUM?"
    |> filled (rgb 115 102 92)
    |> scale 0.6
    |> move (-85,35)
  ]
  
text_Body = group[

    
  text "Let's say you were given a graph and wanted to calculate the area"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,30)
  ,text "under it between the curve and the x-axis. Where would you start?"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,25),
    
   text "If we wanted to make a pretty good guess of what this area is, we could use rectangles"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,12)
  ,text "to approximate this area. Depending on how these rectangles are aligned, we can get more"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,7)
  ,text "accurate results. The three methods this visualizer uses are left-endpoints, midpoints,"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,2)
  ,text "and right-endpoints. We made this visualizer to help show the differences in these methods"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,-3)
   ,text "We also include calculations along with the curve to demonstrate the steps to take to get a"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,-8)
  ,text "proper approximation."
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-85,-13)
  ,text "Left-Endpoints"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-80,-60)
  ,text "Right-Endpoints"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (50,-60)
  ,text "Midpoints"
    |> filled (rgb 115 102 92)
    |> scale 0.4
    |> move (-10,-60)

  ]
  
exampleCurve1 = [

    rect 0.5 22
    |> outlined (solid 0.8) black
    |> move (55, 36),
    
    rect 25 0.5
    |> outlined (solid 0.8) black
    |> move (65, 30),
    
    curve (0,0) [Pull (10,0) (12,-10)]
    |> outlined (solid 0.7) red
    |> scaleY -1.5
    |> scaleX 1.5
    |> move(55, 30)
    

  ]
  |> group
  
  


