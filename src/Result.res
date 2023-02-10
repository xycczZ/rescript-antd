@react.component @module("antd")
external make: (
    ~className: string=?,
    ~extra: React.element=?,
    ~icon: React.element=?,
    ~status: [|#success |#error |#info |#warning |#404 |#403 |#500]=?,
    ~subTitle: React.element=?,
    ~title: React.element=?,
) => React.element = "Result"