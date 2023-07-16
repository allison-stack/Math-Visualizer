import Wenc15.WelcomePage0 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=4d8a36c7-0cad-4b22-9031-5f81517d64a2
import Wu509.Helppage -- https://cs1xd3.online/ShowModulePublish?modulePublishId=d634e75f-2dbc-42c8-b5d2-d9706ad95568
import Kongy17.ExamplePage -- https://cs1xd3.online/ShowModulePublish?modulePublishId=fb998015-476d-4bac-8c55-de07bd584f33
import Kongy17.HowtoUseP1 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=49e859b1-0ef3-4ecb-a69c-937985c869c5
import Kongy17.HowtoUseP2 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=6aaa2129-b787-419e-9040-e0412129f406
import Zhaoa32.HowtoUseLastPage -- https://cs1xd3.online/ShowModulePublish?modulePublishId=e37010ab-9fe3-4fa5-9df1-90d82e91278c
import Zhaoa32.DefinitionsPage1 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=56c28e91-46b4-447b-8de5-d5dd43f884f3
import Zhaoa32.DefinitionsPage2 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=ba8a90f0-494e-46c0-9cbc-e91ce2bf5555
import Sauroc.Prototype4AboutPage -- https://cs1xd3.online/ShowModulePublish?modulePublishId=a462a3a2-57d4-4b9d-b3a6-47d0756f4dae
import Wu509.ParabolaPlot040 -- https://cs1xd3.online/ShowModulePublish?modulePublishId=cc7fe237-abe1-4816-95d2-77223ca1ef72

myShapes model =
    case model.state of
        Welcome  ->
            [ Wenc15.WelcomePage0.myShapes model |> group 
            , group
                  [
                       buttonDefinitions
                         |> move(-12,-18)
                  ]
                     |> move (0, 0)
                     |> notifyTap ToDefinition
            , group
                  [
                       buttonToGraph
                       |> move(0,-18)
                  ]
                     |> move (0, 0)
                     |> notifyTap ToGraph
            , group
                  [
                       buttonHowToUse
                        |> move(12,-18)
                  ]
                     |> move (0, 0)
                     |> notifyTap ToHowToUse
            , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
            , group
                  [
                       buttonHelp
                  ]
                     |> move (0.25, 0)
                     |> notifyTap ToHelp
            , group
                  [
                       buttonExample
                  ]
                     |> move (0.4, 0)
                     |> notifyTap ToExamples
            ]
        DefinitionPage  ->
            [ Zhaoa32.DefinitionsPage2.myShapes model |> group
            , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
            , group
                  [
                       buttonHelp
                  ]
                     |> move (0.4, 0)
                     |> notifyTap ToHelp
            , group
                  [
                       buttonExample
                  ]
                     |> move (0.4, 0)
                     |> notifyTap ToExamples
            , group
                  [
                       buttonNext
                  ]
                     |> move (50, -22)
                     |> notifyTap ToNextDefPage
            ]
        Graph  ->
            [ Wu509.ParabolaPlot040.myShapes model.agf2Model |> group |> GraphicSVG.map AGF2Msg
            , group
                  [
                       buttonAbout
                  ]
                     |> move (-115, -8)
                     |> notifyTap ToAbout
            , group
                  [
                       buttonHelp
                  ]
                     |> move (-135, -25)
                     |> notifyTap ToHelp
            , group
                  [
                       buttonExample
                  ]
                     |> move (-155, -43)
                     |> notifyTap ToExamples
            , group
                  [
                       buttonBack
                  ]
                     |> move (60, -9)
                     |> notifyTap Back
            ]
        HowToUse  ->
            [Kongy17.HowtoUseP1.myShapes model.agfModel |> group |> GraphicSVG.map AGFMsg
   
            , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
            , group
                  [
                       buttonHelp
                  ]
                     |> move (0.25, 0)
                     |> notifyTap ToHelp
            , group
                  [
                       buttonExample
                  ]
                     |> move (0.4, 0)
                     |> notifyTap ToExamples
            , group
                  [
                       buttonBack
                  ]
                     |> scale 1
                     |> move (-130, 0)
                     |> notifyTap Back
            , group
                  [
                       buttonNext
                  ]
                     |> move (40, -26)
                     |> notifyTap ToNextPage
            ]
        About  ->
            [ Sauroc.Prototype4AboutPage.myShapes model |> group
            , group
                  [
                       buttonBack
                  ]
                     |> move (5, 13)
                     |> notifyTap Back
            ]
        Help  ->
            [ Wu509.Helppage.myShapes model |> group 
            , group
                  [
                       buttonBack
                       |> move (20,3)
                  ]
                     |> move (23, 0)
                     |> notifyTap Back
            ]
        Examples  ->
            [ Kongy17.ExamplePage.myShapes model|>group
            , group
                  [
                       buttonBack
                       |> move (32,28)
                       |> scale 0.7
                  ]
                     |> scale 1.5
                     |> move (-140, -23)
                     |> notifyTap Back
            ]
            
        NextPage  ->
            [ Kongy17.HowtoUseP2.myShapes model.agfModel |> group |> GraphicSVG.map AGF3Msg
            , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
            , group
                  [
                       buttonHelp
                  ]
                     |> move (0.25, 0)
                     |> notifyTap ToHelp
            , group
                  [
                       buttonExample
                  ]
                     |> move (0.4, 0)
                     |> notifyTap ToExamples
            , group
                  [
                       buttonBack
                  ]
                     |> scale 1
                     |> move (-130, 0)
                     |> notifyTap Back
            , group
                  [
                       buttonBack
                  ]
                     |> move (40, -26)
                     |> notifyTap Back
             , group
                  [
                       buttonNext
                  ]
                     |> move (40, -26)
                     |> notifyTap ToNextPage2
            ]
        NextPage2  ->
            [ Zhaoa32.HowtoUseLastPage.myShapes model.agf4Model |> group |> GraphicSVG.map AGF4Msg
                , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
                , group
                      [
                           buttonHelp
                      ]
                         |> move (0.25, 0)
                         |> notifyTap ToHelp
                , group
                      [
                           buttonExample
                      ]
                         |> move (0.4, 0)
                         |> notifyTap ToExamples
                , group
                      [
                           buttonBack
                      ]
                         |> scale 1
                         |> move (-130, 0)
                         |> notifyTap Back
                , group
                      [
                           buttonBack
                      ]
                         |> move (40, -26)
                         |> notifyTap Back
            ]
        NextDefPage  ->
            [ Zhaoa32.DefinitionsPage1.myShapes model |> group
                , group
                  [
                       buttonAbout
                  ]
                     |> move (0, 0)
                     |> notifyTap ToAbout
                , group
                      [
                           buttonHelp
                      ]
                         |> move (0.25, 0)
                         |> notifyTap ToHelp
                , group
                      [
                           buttonExample
                      ]
                         |> move (0.4, 0)
                         |> notifyTap ToExamples
                , group
                  [
                       buttonBack
                  ]
                     |> move (50, -22)
                     |> notifyTap Back

            ]
        
type Msg = Tick Float GetKeyState
         | ToDefinition 
         | ToGraph 
         | ToHowToUse 
         | ToAbout 
         | ToHelp 
         | ToExamples 
         | Transition14 
         | Transition15 
         | Transition16 
         | Transition17 
         | Transition18 
         | Transition19 
         | Transition20 
         | Transition21 
         | Transition22 
         | Back
         | ToNextPage
         | ToNextPage2
         | ToNextDefPage
         | Transition28 
         | Transition29 
         | Transition30 
         | Transition31 
         | Transition32 
         | AGFMsg Kongy17.HowtoUseP1.Msg
         | AGF2Msg Wu509.ParabolaPlot040.Msg
         | AGF3Msg Kongy17.HowtoUseP2.Msg
         | AGF4Msg Zhaoa32.HowtoUseLastPage.Msg

type State = Welcome 
           | DefinitionPage 
           | Graph 
           | HowToUse 
           | About 
           | Help 
           | Examples 
           | NextPage
           | NextDefPage
           | NextPage2

update msg model =
    case msg of
        Tick t _ ->
            { model | time = t }
        ToDefinition  ->
            case model.state of
                Welcome  ->
                    { model | state = DefinitionPage  }

                otherwise ->
                    model
        ToGraph  ->
            case model.state of
                Welcome  ->
                    { model | state = Graph  }

                otherwise ->
                    model
        ToHowToUse  ->
            case model.state of
                Welcome  ->
                    { model | state = HowToUse  }

                otherwise ->
                    model
        ToAbout  ->
            case model.state of
                Welcome  ->
                    { model | state = About  }

                DefinitionPage  ->
                    { model | state = About  }

                Graph  ->
                    { model | state = About  }

                HowToUse  ->
                    { model | state = About  }
                NextPage  ->
                    { model | state = About  }
                NextDefPage  ->
                    { model | state = About  }
                NextPage2  ->
                    { model | state = About  }
                otherwise ->
                    model
        ToHelp  ->
            case model.state of
                Welcome  ->
                    { model | state = Help  }

                DefinitionPage  ->
                    { model | state = Help  }

                Graph  ->
                    { model | state = Help  }
                NextPage2  ->
                    { model | state = Help  }
                HowToUse  ->
                    { model | state = Help  }
                NextPage  ->
                    { model | state = Help  }
                NextDefPage  ->
                    { model | state = Help  }

                otherwise ->
                    model
        ToExamples  ->
            case model.state of
                Welcome  ->
                    { model | state = Examples  }

                DefinitionPage  ->
                    { model | state = Examples  }

                Graph  ->
                    { model | state = Examples  }
                NextPage2  ->
                    { model | state = Examples  }
                HowToUse  ->
                    { model | state = Examples  }
                NextPage  ->
                    { model | state = Examples  }
                NextDefPage  ->
                    { model | state = Examples  }

                otherwise ->
                    model
        ToNextPage    ->
            case model.state of
                    HowToUse  ->
                        { model | state = NextPage  }
                    NextPage  ->
                      { model | state = NextPage  }
                    NextPage2  ->
                        { model | state = NextPage  }
                    otherwise ->
                        model
        
        ToNextPage2    ->
            case model.state of
                    NextPage  ->
                        { model | state = NextPage2  }
                    HowToUse  ->
                        { model | state = NextPage2  }
                    
                    
                    otherwise ->
                        model
        
        ToNextDefPage    ->
            case model.state of
                    DefinitionPage  ->
                        { model | state = NextDefPage  }
                    otherwise ->
                        model             
        Transition14  ->
            case model.state of
                otherwise ->
                    model
        Transition15  ->
            case model.state of
                otherwise ->
                    model
        Transition16  ->
            case model.state of
                otherwise ->
                    model
        Transition17  ->
            case model.state of
                otherwise ->
                    model
        Transition18  ->
            case model.state of
                otherwise ->
                    model
        Transition19  ->
            case model.state of
                otherwise ->
                    model
        Transition20  ->
            case model.state of
                otherwise ->
                    model
        Transition21  ->
            case model.state of
                otherwise ->
                    model
        Transition22  ->
            case model.state of
                otherwise ->
                    model
        Back  ->
            case model.state of
                DefinitionPage  ->
                    { model | state = Welcome  }

                Graph  ->
                    { model | state = Welcome  }

                HowToUse  ->
                    { model | state = Welcome  }

                About  ->
                    { model | state = Welcome  }
                NextPage2  ->
                    { model | state = Welcome  }
                Help  ->
                    { model | state = Welcome  }

                Examples  ->
                    { model | state = Welcome  }
                NextPage  ->
                    { model | state = Welcome  }
                NextDefPage  ->
                    { model | state = Welcome  }

                otherwise ->
                    model
        Transition28  ->
            case model.state of
                otherwise ->
                    model
        Transition29  ->
            case model.state of
                otherwise ->
                    model
        Transition30  ->
            case model.state of
                otherwise ->
                    model
        Transition31  ->
            case model.state of
                otherwise ->
                    model
        Transition32  ->
            case model.state of
                otherwise ->
                    model
        AGFMsg agfMsg ->  -- step 6
                        { model | agfModel = Kongy17.HowtoUseP1.update agfMsg 
                                                            model.agfModel }
        AGF2Msg agf2Msg ->  -- step 6
                        { model | agf2Model = Wu509.ParabolaPlot040.update agf2Msg 
                                                            model.agf2Model }
        AGF3Msg agf3Msg ->  -- step 6
                        { model | agf3Model = Kongy17.HowtoUseP2.update agf3Msg 
                                                            model.agf3Model }
        
        AGF4Msg agf4Msg ->  -- step 6
                        { model | agf4Model = Zhaoa32.HowtoUseLastPage.update agf4Msg 
                                                            model.agf4Model }
type alias Model =
    { time : Float
    , state : State
    , agfModel : Kongy17.HowtoUseP1.Model
    , agf2Model : Wu509.ParabolaPlot040.Model
    , agf3Model : Kongy17.HowtoUseP2.Model
    , agf4Model : Zhaoa32.HowtoUseLastPage.Model
    }

type alias Point = (Float, Float)

init : Model
init = { time = 0 
       , state = Welcome 
       , agfModel = Kongy17.HowtoUseP1.init
       , agf2Model = Wu509.ParabolaPlot040.init
       , agf3Model = Kongy17.HowtoUseP2.init
       , agf4Model = Zhaoa32.HowtoUseLastPage.init
       }
    
buttonAbout = move(30,43)<|group[
  circle 8
    |> filled grey
    |> move (1,-0.5)
  ,circle 8
    |> filled white
  ,roundedRect 7.5 7.5 0.1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (0.2,-1)
  ,roundedRect 6 0.1 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (1,3.9)
  , curve (-3.5,3) [Pull (-5,6) (4.5,5)]
    |> outlined (solid 1) (rgb 16 14 64)
   ,rect 0.1 3 
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (-1,0.5)
   ,rect 0.1 3 
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (1,0.5)
   ,rect 0.1 0.8
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> rotate (degrees 45)
    |> move (0.5,-0.5)
   ,rect 0.1 0.8
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> rotate (degrees -45)
    |> move (-0.5,-0.5)
    
    ]
  
buttonHelp =  move(50,43)<|group[
  circle 8
    |> filled grey
    |> move (1,-0.5)
  ,circle 8
    |> filled white
  ,roundedRect 2 3 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (-4,0)
  ,roundedRect 2 3 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (4,0)
  , curve (-4.5,1.5) [Pull (0,7) (4.5,1.5)]
    |> outlined (solid 1) (rgb 16 14 64)
  , curve (4,-2) [Pull (4,-5) (0,-4)]
    |> outlined (solid 1) (rgb 16 14 64)
    ]
    
buttonBack = scale 0.8<|move(30,50)<|group[
  circle 8 
    |> filled (rgb 16 14 64)
  , roundedRect 0.8 8 1
    |> filled white
    |> rotate (degrees -60)
    |> move (-3,3.5)
  , roundedRect 0.8 8 1
    |> filled white
    |> rotate (degrees 60)
    |> move (3,3.5)
  ,  openPolygon [(0,5.5),(0,-5.5),(3.3,0)]
    |> filled white
    |> rotate (degrees 90)
    |> move (0,0)
  , roundedRect 10 5 1
    |> filled white
    |> move (0,-2)
  , circle 2
    |> filled  (rgb 16 14 64)
    |> move (0,-2)
  , roundedRect 4 6 1
    |> filled (rgb 16 14 64)
    |> move (0,-4)

  ]

buttonNext = scale 0.8<|move(30,50)<|group[
  circle 8 
    |> filled (rgb 16 14 64)
  , rect 9 3
    |> filled white
    |> move (-1,0)
  , triangle 3
    |> filled white
    |> move (3,0)

  ]
  
buttonExample  =  move(70,43)<|group[
  circle 8
    |> filled grey
    |> move (1,-0.5)
  ,circle 8
    |> filled white
  , roundedRect 9 6 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (0,-1)
  , roundedRect 7 0.1 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (0,3.3)
  , roundedRect 4 0.1 1
    |> outlined (solid 0.8) (rgb 16 14 64)
    |> move (0,4.5)
  , text "E.g"
    |> size 4
    |> bold
    |> filled (rgb 16 14 64)
    |> move (-2.7,-2)
  ]   

buttonNextPage = group[
  circle 6
    |> filled black
    |> makeTransparent 0
    |> move (49,43)
  ]

buttonDefinitions = scale 0.7<|group[
   circle 15
    |> filled grey
    |> move (-54,-37)
  ,circle 15
    |> filled(rgb 16 14 64)
    |> move (-56,-35)

  ,square 16
  |> outlined (solid 1.5) white
  |> move (-56,-35)
  , rectangle 1.5 4
  |> filled white
  |> move (-60,-32)
  , rectangle 4 1.5
  |> filled white
  |> move (-60,-32)
  , rectangle 4 1.5
  |> filled white
  |> move (-60,-39)
  , circle 0.8
  |> filled white
  |> move (-52,-30.5)
  , rectangle 4 1.5
  |> filled white
  |> move (-52,-32)
  , circle 0.8
  |> filled white
  |> move (-52,-33.5)
  , rectangle 4 1.5
  |> filled white
  |> move (-52,-38)
  , rectangle 4 1.5
  |> filled white
  |> move (-52,-40)
  
  ]
buttonToGraph = scale 0.7<|group[
   circle 15
    |> filled grey
    |> move (2,-37)
  ,circle 15
    |> filled(rgb 16 14 64)
    |> move (0,-35)
  , rectangle 1.5 17
    |> filled white
    |> move (-8,-35)
    , rectangle 17 1.5
    |> filled white
    |> move (0,-44)
    , rectangle 6.5 1.5
    |> filled white
    |> rotate (degrees 30)
    |> move (-4.6,-35)
    , rectangle 6.5 1.5
    |> filled white
    |> rotate (degrees -30)
    |> move (0.9,-35)
    , rectangle 6 1.5
    |> filled white
    |> rotate (degrees 30)
    |> move (6,-35)
    ,triangle 2
    |> filled white
    |> rotate (degrees 30)
    |> move (8.5,-33.5)
    , rectangle 0.5 2
    |> filled white
    |> move (-1.9,-35)
     , rectangle 0.5 2
    |> filled white
    |> move (-1.9,-37.5)
    , rectangle 0.5 2
    |> filled white
    |> move (-1.9,-40)
    , rectangle 0.5 2
    |> filled white
    |> move (-1.9,-42.5)
     , rectangle 0.5 2
    |> filled white
    |> move ( 3.1,-37.5)
    , rectangle 0.5 2
    |> filled white
    |> move ( 3.1,-40)
    , rectangle 0.5 2
    |> filled white
    |> move ( 3.1,-42.5)

    

  ]
buttonHowToUse = scale 0.7<|group[
  circle 15
    |> filled grey
    |> move (57,-37)
  ,circle 15
    |> filled(rgb 16 14 64)
    |> move (55,-35)
  ,circle 7
    |> filled white
    |> move (55,-32)
  , roundedRect 6 3 2
    |> filled white
    |> move (55,-39)
   , rectangle 3 2
   |> filled white
    |> move (55,-39)
    , circle 2
    |> filled white
    |> move (55,-41)

    , text "?"
    |> bold
    |> fixedwidth
    |> filled(rgb 16 14 64)
    |> scale 0.9
    |> move (52,-35)
  
    
    
    
    ]
   
   
    
    
    
    
    
    
    
    
main = gameApp Tick { model = init, view = view, update = update, title = "Game Slot" }

view model = collage 192 128 (myShapes model)



