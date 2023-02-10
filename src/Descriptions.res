type columnConfig = {
    xs?: int,
    sm?: int,
    md?: int,
    xl?: int,
    xxl?: int
}
module Column = {
    type t
    external fromInt: int => t = "%identity"
    external fromConfig: columnConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~bordered: bool=?,
    ~colon: bool=?,
    ~column: Column.t=?,
    ~contentStyle: ReactDOM.style=?,
    ~extra: React.element=?,
    ~labelStyle: ReactDOM.style=?,
    ~layout: [#horizontal |#vertical]=?,
    ~size: [#default |#middle |#small]=?,
    ~title: React.element=?,
    ~className: string=?,
) => React.element = "Descriptions"


module Item = {
    @react.component @module("antd") @scope("Descriptions")
    external make: (
        ~className: string=?,
        ~children: React.element,
        ~contentStyle: ReactDOM.style=?,
        ~label: React.element=?,
        ~labelStyle: ReactDOM.style=?,
        ~span: int=?,
    ) => React.element = "Item"
}