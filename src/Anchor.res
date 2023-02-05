type linkParam = {
    title: React.element,
    href: string
}

type rec anchorLinkItemProps = {
    key: string,
    children?: array<anchorLinkItemProps>,
    prefixCls?: string,
    href: string,
    target?: string,
    title: React.element,
    className?: string
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~prefixCls: string=?,
    ~className: string=?,
    ~style: ReactDOM.style=?,
    ~affix: bool=?,
    ~bounds: int=?,
    ~getContainer: () => Webapi.Dom.HtmlElement.t=?,
    ~getCurrentAnchor: string => string=?,
    ~offsetTop: float=?,
    ~showInkInFixed: bool=?,
    ~targetOffset: int=?,
    ~onChange: string => ()=?,
    ~onClick: (ReactEvent.Mouse.t, linkParam) => ()=?,
    ~items: array<anchorLinkItemProps>=?,
) => React.element = "Anchor"

module Link = {
    @react.component @module("antd") @scope("Anchor")
    external make: (
        ~children: React.element=?,
        ~prefixCls: string=?,
        ~href: string=?,
        ~target: string=?,
        ~title: React.element=?,
        ~className: string=?,
    ) => React.element = "Link"
}