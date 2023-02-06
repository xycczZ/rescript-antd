type controlsConfig = {
    upIcon?: React.element,
    downIcon?: React.element,
}
type controls
external fromBool: bool => controls = "%identity"
external fromConfig: controlsConfig => controls = "%identity"

type formatterValue
@send external toString: formatterValue => string = "toString"
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
    ~controls: controls=?,
    ~decimalSeparator: string=?,
    ~defaultValue: float=?,
    ~disabled: bool=?,
    ~formatter: (formatterValue, formatterInfo) => string=?,
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
    ~onChange: Js.null<formatterValue> => (),
    ~onPressEnter: ReactEvent.Synthetic.t => (),
    ~onStep: (float, stepInfo) => (),
) => React.element = "InputNumber"