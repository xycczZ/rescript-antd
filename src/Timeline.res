type pending
external fromBool: bool => pending = "%identity"
external fromEl: React.element => pending = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~mode: [#left |#alternate |#right]=?,
    ~pending: pending=?,
    ~pendingDot: React.element=?,
    ~reverse: bool=?,
) => React.element = "Timeline"

module Item = {
    @react.component @module("antd") @scope("Timeline")
    external make: (
        ~children: React.element,
        ~color: string=?,
        ~dot: React.element=?,
        ~label: React.element=?,
        ~position: [#left |#right]=?,
    ) => React.element = "Item"
}