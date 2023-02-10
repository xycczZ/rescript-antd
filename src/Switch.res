@react.component @module("antd")
external make: (
    ~className: string=?,
    ~autoFocus: bool=?,
    ~checked: bool=?,
    ~checkedChildren: React.element=?,
    ~className: string=?,
    ~defaultChecked: bool=?,
    ~disabled: bool=?,
    ~loading: bool=?,
    ~size: [#default | #small]=?,
    ~unCheckedChildren: React.element=?,
    ~onChange: (bool, ReactEvent.Synthetic.t) => ()=?,
    ~onClick: (bool, ReactEvent.Synthetic.t) => ()=?,
) => React.element = "Switch"