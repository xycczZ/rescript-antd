type sizeConfig = {
    xs?: int,
    sm?: int,
    md?: int,
    xl?: int,
    xxl?: int
}
type size
external fromNumber: float => size = "%identity"
external fromVariant: [#large |#small |#default] => size = "%identity"
external fromConfig: sizeConfig => size = "%identity"

type src
external fromStr: string => src = "%identity"
external fromEl: React.element => src = "%identity"

@react.component @module("antd")
external make: (
    ~alt: string=?,
    ~gap: int=?,
    ~icon: React.element=?,
    ~shape: [|#circle |#square]=?,
    ~size: size=?,
    ~src: src=?,
    ~srcSet: string=?,
    ~draggable: bool=?,
    ~crossOrigin: [|#anonymous |#"use-credentials" |#""]=?,
    ~onError: () => bool=?,
) => React.element = "Avatar"

module Group = {
    @react.component @module("antd") @scope("Avatar")
    external make: (
        ~children: React.element,
        ~maxCount: int=?,
        ~maxPopoverPlacement: [#top |#bottom]=?,
        ~maxPopoverTrigger: [#hover |#focus |#click]=?,
        ~maxStyle: ReactDOM.style=?,
        ~size: size=?,
    ) => React.element = "Group"
}