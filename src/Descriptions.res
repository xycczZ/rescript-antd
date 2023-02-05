type columnConfig = {
    xs?: int,
    sm?: int,
    md?: int,
    xl?: int,
    xxl?: int
}
type column
external fromInt: int => column = "%identity"
external fromConfig: columnConfig => column = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~bordered: bool=?,
    ~colon: bool=?,
    ~column: column=?,
    ~contentStyle: ReactDOM.style=?,
    ~extra: React.element=?,
    ~labelStyle: ReactDOM.style=?,
    ~layout: [#horizontal |#vertical]=?,
    ~size: [#default |#middle |#small]=?,
    ~title: React.element=?,
) => React.element = "Descriptions"


module Item = {
    @react.component @module("antd") @scope("Descriptions")
    external make: (
        ~children: React.element,
        ~contentStyle: ReactDOM.style=?,
        ~label: React.element=?,
        ~labelStyle: ReactDOM.style=?,
        ~span: int=?,
    ) => React.element = "Item"
}