type optionsConfig = {
    label: React.element,
    value: string,
    icon?: React.element,
    disabled?: bool,
    className?: string,
}

type options
external fromStr: string => options = "%identity"
external fromConfig: optionsConfig => options = "%identity"

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~block: bool=?,
    ~defaultValue: string=?,
    ~disabled: bool=?,
    ~onChange: string => ()=?,
    ~options: array<options>,
    ~size: [#large |#middle |#small]=?,
    ~value: string=?,
) => React.element = "Segmented"