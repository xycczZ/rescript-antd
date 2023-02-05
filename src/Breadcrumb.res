type subRoute = {
    path: string,
    breadcrumbName: string,
}

type route = {
    path: string,
    breadcrumbName: string,
    children?: array<subRoute>,
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~itemRender: (route, {..}, array<route>, array<string>) => React.element=?,
    ~style: ReactDOM.style=?,
    ~className: string=?,
    ~separator: React.element=?,
    ~params: {..}=?,
    ~routes: array<route>=?,
    ~prefixCls: string=?,
) => React.element = "Breadcrumb"

module Item = {
    @react.component @module("antd") @scope("Breadcrumb")
    external make: (
        ~children: React.element=?,
        ~prefixCls: string=?,
        ~separator: React.element=?,
        ~href: string=?,
        ~className: string=?,
        ~onClick: ReactEvent.Mouse.t => ()=?,
        ~dropdownProps: Dropdown.t=?,
        ~menu: Menu.t=?
    ) => React.element = "Item"
}

module Separator = {
    @react.component @module("antd") @scope("Breadcrumb")
    external make: (
        ~children: React.element=?,
    ) => React.element = "Separator"
}