type sizeConfig = {
    xs?: int,
    sm?: int,
    md?: int,
    xl?: int,
    xxl?: int
}
module Size = {
    type t
    external fromNumber: float => t = "%identity"
    external fromVariant: [#large |#small |#default] => t = "%identity"
    external fromConfig: sizeConfig => t = "%identity"
}

module Src = {
    type t
    external fromStr: string => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~alt: string=?,
    ~gap: int=?,
    ~icon: React.element=?,
    ~shape: [|#circle |#square]=?,
    ~size: Size.t=?,
    ~src: Src.t=?,
    ~srcSet: string=?,
    ~draggable: bool=?,
    ~crossOrigin: [|#anonymous |#"use-credentials" |#""]=?,
    ~onError: () => bool=?,
    ~className: string=?,
) => React.element = "Avatar"

module Group = {
    @react.component @module("antd") @scope("Avatar")
    external make: (
        ~children: React.element,
        ~maxCount: int=?,
        ~maxPopoverPlacement: [#top |#bottom]=?,
        ~maxPopoverTrigger: [#hover |#focus |#click]=?,
        ~maxStyle: ReactDOM.style=?,
        ~size: Size.t=?,
    ) => React.element = "Group"
}