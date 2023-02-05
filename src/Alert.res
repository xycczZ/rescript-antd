@react.component @module("antd")
external make: (
    ~action: React.element=?,
    ~afterClose: () => ()=?,
    ~banner: bool=?,
    ~closable: bool=?,
    ~closeText: React.element=?,
    ~closeIcon: React.element=?,
    ~description: React.element=?,
    ~icon: React.element=?,
    ~message: React.element=?,
    ~showIcon: bool=?,
    ~\"type": [#success |#info |#warning |#error]=?,
    ~onClose: ReactEvent.Mouse.t => ()=?,
) => React.element = "Alert"

module ErrorBoundary = {
    @react.component @module("antd") @scope("Alert")
    external make: (
        ~children: React.element,
        ~description: React.element=?,
        ~message: React.element=?,
    ) => React.element = "ErrorBoundary"
}