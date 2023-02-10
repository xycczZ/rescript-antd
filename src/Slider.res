type marksInfo = {
    style: ReactDOM.style,
    label: React.element
}

module Marks = {
    type t
    external fromMap1: Belt.Map.Int.t<React.element> => t = "%identity"
    external fromMap2: Belt.Map.Int.t<marksInfo> => t = "%identity"
}

type rangeConfig = {
    draggableTrack: bool
}

module Range = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: rangeConfig => t = "%identity"
}

type tooltip<'a> = {
    \"open": bool,
    placement: [#top |#left |#right |#bottom |#topLeft |#topRight |#bottomLeft 
        |#bottomRight |#leftTop |#leftBottom |#rightTop |#rightBottom],
    getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t,
    formatter: Js.null<'a => React.element>
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~allowClear: bool=?,
    ~defaultValue: 'a=?, // float or (float, float)
    ~disabled: bool=?,
    ~dots: bool=?,
    ~included: bool=?,
    ~marks: Marks.t=?,
    ~max: int=?,
    ~min: int=?,
    ~range: Range.t=?,
    ~reverse: bool=?,
    ~step: Js.null<int>=?,
    ~tooltip: tooltip<'a>=?,
    ~value: 'a=?,
    ~vertical: bool=?,
    ~onAfterChange: 'a => ()=?,
    ~onChange: 'a => ()=?,
) => React.element = "Slider"