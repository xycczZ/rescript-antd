type destroyTooltipOnHideConfig = {
    keepParent?: bool
}

type destroyTooltipOnHide
external fromBool: bool => destroyTooltipOnHide = "%identity"
external fromConfig: destroyTooltipOnHideConfig => destroyTooltipOnHide = "%identity"

@react.component @module("antd")
external make: (
    ~className: string=?,
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

    ~align: DatePicker.alignType=?,
    ~arrowPointAtCenter: bool=?,
    ~autoAdjustOverflow: bool=?,
    ~color: string=?,
    ~defaultOpen: bool=?,
    ~destroyTooltipOnHide: destroyTooltipOnHide=?,
    ~getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t=?,
    ~mouseEnterDelay: int=?,
    ~mouseLeaveDelay: int=?,
    ~overlayClassName: string=?,
    ~overlayStyle: ReactDOM.style=?,
    ~overlayInnerStyle: ReactDOM.style=?,
    ~placement: [#top |#left |#right |#bottom |#topLeft |#topRight |#bottomLeft 
        |#bottomRight |#leftTop |#leftBottom |#rightTop |#rightBottom]=?,
    ~trigger: array<[|#hover |#focus |#click |#contextMenu]>=?,
    ~\"open": bool=?,
    ~zIndex: int=?,
) => React.element = "Popconfirm"