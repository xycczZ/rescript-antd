@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~cancelButtonProps: Button.ButtonProps.t=?,
    ~cancelText: string=?,
    ~disabled: bool=?,
    ~icon: React.element=?,
    ~okButtonProps: Button.ButtonProps.t=?,
    ~okText: string=?,
    ~okType: Button.buttonType=?,
    ~showCancel: bool=?,
    ~title: () => React.element,
    ~description: () => React.element=?,
    ~onCancel: ReactEvent.Mouse.t => ()=?,
    ~onConfirm: ReactEvent.Mouse.t => ()=?,
    ~onOpenChange: (bool, ReactEvent.Synthetic.t) => ()=?,
) => React.element = "Popconfirm"