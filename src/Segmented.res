type optionsConfig = {
    label: React.element,
    value: string,
    icon?: React.element,
    disabled?: bool,
    className?: string,
}

module Options = {
    type t
    external fromStr: string => t = "%identity"
    external fromConfig: optionsConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~block: bool=?,
    ~defaultValue: string=?,
    ~disabled: bool=?,
    ~onChange: string => ()=?,
    ~options: array<Options.t>,
    ~size: [#large |#middle |#small]=?,
    ~value: string=?,
) => React.element = "Segmented"