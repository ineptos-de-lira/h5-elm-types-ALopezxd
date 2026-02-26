module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\grade ->
            if grade >= 7 then
                Approved

            else if grade < 0 then
                Pending

            else
                Failed
        )
        grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction domain =
    case domain of
        OnTime ->
            "Esperar"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
