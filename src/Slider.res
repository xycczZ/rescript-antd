type marksInfo = {
    style: ReactDOM.style,
    label: React.element
}
type marks
external fromMap1: Belt.Map.Int.t<React.element> => marks = "%identity"
external fromMap2: Belt.Map.Int.t<marksInfo> => marks = "%identity"

type rangeConfig = {
    draggableTrack: bool
}
type range
external fromBool: bool => range = "%identity"
external fromConfig: rangeConfig => range = "%identity"

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
    ~marks: marks=?,
    ~max: int=?,
    ~min: int=?,
    ~range: range=?,
    ~reverse: bool=?,
    ~step: Js.null<int>=?,
    ~tooltip: tooltip<'a>=?,
    ~value: 'a=?,
    ~vertical: bool=?,
    ~onAfterChange: 'a => ()=?,
    ~onChange: 'a => ()=?,
) => React.element = "Slider"