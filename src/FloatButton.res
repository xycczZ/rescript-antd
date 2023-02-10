@react.component @module("antd")
external make: (
    ~icon: React.element=?,
    ~description: React.element=?,
    ~tooltip: () => React.element=?,
    ~\"type": [#default |#primary]=?,
    ~shape: [#circle |#square]=?,
    ~onClick: ReactEvent.Synthetic.t => ()=?,
    ~href: string=?,
    ~target: string=?,
) => React.element = "FloatButton"

module Group = {
    @react.component @module("antd") @scope("FloatButton")
    external make: (
        ~children: React.element,
        ~icon: React.element=?,
        ~description: React.element=?,
        ~tooltip: () => React.element=?,
        ~\"type": [#default |#primary]=?,
        ~shape: [#circle |#square]=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~href: string=?,
        ~target: string=?,
        ~trigger: [#hover |#click]=?,
        ~\"open": bool=?,
        ~onOpenChange: bool => ()=?,
    ) => React.element = "Group"
}

module BackTop = {
    @react.component @module("antd") @scope("FloatButton")
    external make: (
        ~icon: React.element=?,
        ~description: React.element=?,
        ~tooltip: () => React.element=?,
        ~\"type": [#default |#primary]=?,
        ~shape: [#circle |#square]=?,
        ~href: string=?,
        ~duration: int=?,
        ~target: () => Webapi.Dom.HtmlElement.t=?,
        ~visibilityHeight: int=?,
        ~onClick: () => ()=?,
        ~className: string=?,
    ) => React.element = "BackTop"
}