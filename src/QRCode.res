@react.component @module("antd")
external make: (
    ~value: string=?,
    ~icon: string=?,
    ~size: int=?,
    ~iconSize: int=?,
    ~color: string=?,
    ~bordered: bool=?,
    ~errorLevel: [#L |#M |#Q |#H]=?,
    ~status: [#active |#expired |#loading]=?,
    ~onRefresh: () => ()=?,
) => React.element = "QRCode"