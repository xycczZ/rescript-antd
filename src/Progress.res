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

module StrokeColor = {
    type t
    external fromStr: string => t = "%identity"
    external fromArr: array<string> => t = "%identity"
    external fromConfig: strokeColorConfig => t = "%identity"
}

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
    strokeColor?: StrokeColor.t,
    strokeWidth?: float,
}

@react.component @module("antd")
external make: (
    ~className: string=?,
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
    ~strokeColor: StrokeColor.t=?,
    ~strokeWidth: float=?,

    // type=circle
    ~width: float=?,
    // strokeColor, strokeWidth

    // dashboard
    ~gapDegree: int=?, //0-295
    ~gapPosition: [|#top |#bottom |#left |#right]=?,
    // strokeWidth, width
) => React.element = "Progress"