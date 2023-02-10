type controlsConfig = {
    upIcon?: React.element,
    downIcon?: React.element,
}

module Controls = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: controlsConfig => t = "%identity"
}

module FormatterValue = {
    type t
    @send external toString: t => string = "toString"
}

type formatterInfo = {
    userTyping: bool,
    input: string,
}

type stepInfo = {
    offset: float,
    \"type": [#up |#down]
}

@react.component @module("antd")
external make: (
    ~addonAfter: React.element=?,
    ~addonBefore: React.element=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~controls: Controls.t=?,
    ~decimalSeparator: string=?,
    ~defaultValue: float=?,
    ~disabled: bool=?,
    ~formatter: (FormatterValue.t, formatterInfo) => string=?,
    ~keyboard: bool=?,
    ~max: float=?,
    ~min: float=?,
    ~parser: string => float=?,
    ~precision: int=?,
    ~readOnly: bool=?,
    ~status: [#error |#warning]=?,
    ~prefix: React.element=?,
    ~size: [#large |#middle |#small]=?,
    ~step: string=?,
    ~stringMode: bool=?,
    ~value: float=?,
    ~onChange: Js.null<FormatterValue.t> => ()=?,
    ~onPressEnter: ReactEvent.Synthetic.t => ()=?,
    ~onStep: (float, stepInfo) => ()=?,
    ~className: string=?,
) => React.element = "InputNumber"