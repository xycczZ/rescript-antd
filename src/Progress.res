type success = {
    percent?: float,
    progress?: float,
    strokeColor?: string
}

type strokeColorConfig = {
    from: string,
    to: string,
    direction: string
}
type strokeColor
external fromStr: string => strokeColor = "%identity"
external fromArr: array<string> => strokeColor = "%identity"
external fromConfig: strokeColorConfig => strokeColor = "%identity"

type inlineT = {
    format?: (float, float) => React.element,
    percent?: float,
    showInfo?: bool,
    status?: [|#success |#"exception" |#normal |#active],
    strokeLinecap?: [|#round |#butt |#square],
    success?: success,
    trailColor?: string,
    \"type"?: [|#line |#circle |#dashboard],

    steps?: int,
    strokeColor?: strokeColor,
    strokeWidth?: float,
}

@react.component @module("antd")
external make: (
    ~format: (float, float) => React.element=?,
    ~percent: float=?,
    ~showInfo: bool=?,
    ~status: [|#success |#"exception" |#normal |#active]=?,
    ~strokeLinecap: [|#round |#butt |#square]=?,
    ~success: success=?,
    ~trailColor: string=?,
    ~\"type": [|#line |#circle |#dashboard]=?,

    // type=line
    ~steps: int=?,
    ~strokeColor: strokeColor=?,
    ~strokeWidth: float=?,

    // type=circle
    ~width: float=?,
    // strokeColor, strokeWidth

    // dashboard
    ~gapDegree: int=?, //0-295
    ~gapPosition: [|#top |#bottom |#left |#right]=?,
    // strokeWidth, width
) => React.element = "Progress"