type sizeInvariant = [
    |#small
    |#middle
    |#large
]

module Size = {
    type t
    external fromNumber: float => t = "%identity"
    external fromVariant: sizeInvariant => t = "%identity"
}

type direction = [#vertical |#horizontal]

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~align: [#start |#end |#center |#baseline]=?,
    ~direction: direction=?,
    ~size: array<Size.t>=?,
) => React.element = "Space"


module Compact = {
    @react.component @module("antd") @scope("Space")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~block: bool=?,
        ~direction: direction=?,
        ~size: sizeInvariant=?,
    ) => React.element = "Compact"
}