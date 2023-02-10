type collapsible = [#header |#icon |#disabled]
type panelProps = {
    collapsible?: collapsible,
    extra?: React.element,
    forceRender?: bool,
    header?: React.element,
    key?: string,
    showArrow?: bool,
}

@react.component @module("antd")
external make: (
    ~children: React.element,
    ~accordion: bool=?,
    ~activeKey: array<string>=?,
    ~bordered: bool=?,
    ~collapsible: collapsible=?,
    ~defaultActiveKey: array<string>=?,
    ~destroyInactivePanel: bool=?,
    ~expandIcon: panelProps => React.element=?,
    ~expandIconPosition: [#start |#end]=?,
    ~ghost: bool=?,
    ~onChange: array<string> => ()=?,
) => React.element = "Collapse"

module Panel = {
    @react.component @module("antd") @scope("Collapse")
    external make: (
        ~children: React.element=?,
        ~collapsible: collapsible=?,
        ~extra: React.element=?,
        ~forceRender: bool=?,
        ~header: React.element=?,
        ~key: string=?,
        ~showArrow: bool=?,
        ~className: string=?,
    ) => React.element = "Panel"
}