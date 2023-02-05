type breakpoint = [
    |#xs
    |#sm
    |#md
    |#lg
    |#xl
    |#xxl
]

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~className: string=?,
    ~hasSider: bool=?,
    ~style: ReactDOM.style=?,
) => React.element = "Layout"

module Sider = {
    @react.component @module("antd") @scope("Layout")
    external make: (
        ~children: React.element=?,
        ~breakpoint: breakpoint=?,
        ~className: string=?,
        ~collapsed: bool=?,
        ~collapsedWidth: int=?,
        ~collapsible: bool=?,
        ~defaultCollapsed: bool=?,
        ~reverseArrow: bool=?,
        ~style: ReactDOM.style=?,
        ~theme: [#light |#dark]=?,
        ~trigger: Js.null<React.element>=?,
        ~width: string=?,
        ~zeroWidthTriggerStyle: ReactDOM.style=?,
        ~onBreakpoint: bool => ()=?,
        ~onCollapse: (bool, [|#clickTrigger |#responsive]) => ()=?,
    ) => React.element = "Sider"
}

module Header = {
    @react.component @module("antd") @scope("Layout")
    external make: (
        ~children: React.element=?,
        ~prefixCls: string=?,
        ~hasSider: bool=?,
        ~style: ReactDOM.style=?,
    ) => React.element = "Header"
}

module Footer = {
    @react.component @module("antd") @scope("Layout")
    external make: (
        ~children: React.element=?,
        ~prefixCls: string=?,
        ~hasSider: bool=?,
        ~style: ReactDOM.style=?,
    ) => React.element = "Footer"
}

module Content = {
    @react.component @module("antd") @scope("Layout")
    external make: (
        ~children: React.element=?,
        ~prefixCls: string=?,
        ~hasSider: bool=?,
        ~style: ReactDOM.style=?,
    ) => React.element = "Content"
}