type tab = {
    key: string,
    tab: React.element
}

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~actions: array<React.element>=?,
    ~activeTabKey: string=?,
    ~bodyStyle: ReactDOM.style=?,
    ~bordered: bool=?,
    ~cover: React.element=?,
    ~defaultActiveTabKey: string=?,
    ~extra: React.element=?,
    ~headStyle: ReactDOM.style=?,
    ~hoverable: bool=?,
    ~loading: bool=?,
    ~size: [#default |#small]=?,
    ~tabBarExtraContent: React.element=?,
    ~tabList: array<tab>=?,
    ~tabProps: Tabs.t=?,
    ~title: React.element=?,
    ~\"type": string=?,
    ~onTabChange: string => ()=?,
    ~className: string=?,
) => React.element = "Card"

module Grid = {
    @react.component @module("antd") @scope("Card")
    external make: (
        ~children: React.element,
        ~className: string=?,
        ~hoverable: bool=?,
        ~style: ReactDOM.style=?,
    ) => React.element = "Grid"
}

module Meta = {
    @react.component @module("antd") @scope("Card")
    external make: (
        ~children: React.element,
        ~avatar: React.element=?,
        ~className: string=?,
        ~description: React.element=?,
        ~style: ReactDOM.style=?,
        ~title: React.element=?,
    ) => React.element = "Meta"
}