@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~content: () => React.element=?,
    ~title: () => React.element=?,

    ~align: DatePicker.alignType=?,
    ~arrowPointAtCenter: bool=?,
    ~autoAdjustOverflow: bool=?,
    ~color: string=?,
    ~defaultOpen: bool=?,
    ~destroyTooltipOnHide: Popconfirm.destroyTooltipOnHide=?,
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
    ~onOpenChange: bool => ()=?,
    ~className: string=?,
) => React.element = "Popover"