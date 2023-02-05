type rec t = {
    formatter?: formatter,
    decimalSeparator?: string,
    groupSeparator?: string,
    precision?: int,
    prefixCls?: string,
} and formatter
external fromFalse: bool => formatter = "%identity"
external fromInvariant: [|#number |#countdown] => formatter = "%identity"
external fromFn: ((string, t) => React.element) => formatter = "%identity"

@react.component @module("antd")
external make: (
    ~formatter: formatter=?,
    ~decimalSeparator: string=?,
    ~groupSeparator: string=?,
    ~precision: int=?,
    ~prefixCls: string=?,
    ~loading: bool=?,
    ~suffix: React.element=?,
    ~prefix: React.element=?,
    ~title: React.element=?,
    ~value: string=?,
    ~valueStyle: ReactDOM.style=?,
) => React.element = "Statistic"

module Countdown = {
    @react.component @module("antd") @scope("Statistic")
    external make: (
        ~format: string=?,
        ~prefix: React.element=?,
        ~suffix: React.element=?,
        ~title: React.element=?,
        ~value: int=?,
        ~valueStyle: ReactDOM.style=?,
        ~onFinish: () => ()=?,
        ~onChange: int => ()=?,
    ) => React.element = "Countdown"
}