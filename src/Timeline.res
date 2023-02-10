module Pending = {
    type t
    external fromBool: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element,
    ~mode: [#left |#alternate |#right]=?,
    ~pending: Pending.t=?,
    ~pendingDot: React.element=?,
    ~reverse: bool=?,
) => React.element = "Timeline"

module Item = {
    @react.component @module("antd") @scope("Timeline")
    external make: (
        ~className: string=?,
        ~children: React.element,
        ~color: string=?,
        ~dot: React.element=?,
        ~label: React.element=?,
        ~position: [#left |#right]=?,
    ) => React.element = "Item"
}