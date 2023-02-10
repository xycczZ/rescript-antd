type sizeInvariant = [
    |#small
    |#middle
    |#large
]
type size
external fromNumber: float => size = "%identity"
external fromVariant: sizeInvariant => size = "%identity"

type direction = [#vertical |#horizontal]

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~align: [#start |#end |#center |#baseline]=?,
    ~direction: direction=?,
    ~size: array<size>=?,
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