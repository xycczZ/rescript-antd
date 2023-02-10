type t = {
    arrow?: Menu.Arrow.t,
    autoFocus?: bool,
    disabled?: bool,
    destroyPopupOnHide?: bool,
    dropdownRender?: React.element => React.element,
    getPopupContainer?: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t,
    menu?: Menu.t,
    overlayClassName?: string,
    overlayStyle?: ReactDOM.style,
    placement?: [#bottom | #bottomLeft | #bottomRight | #top | #topLeft | #topRight],
    trigger?: array<[#click | #hover | #contextMenu]>,
    \"open"?: bool,
    onOpenChange?: bool => unit,
  }

@react.component @module("antd")
external make: (
  ~children: React.element=?,
  ~arrow: Menu.Arrow.t=?,
  ~autoFocus: bool=?,
  ~disabled: bool=?,
  ~destroyPopupOnHide: bool=?,
  ~dropdownRender: React.element => React.element=?,
  ~getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t=?,
  ~menu: Menu.t=?,
  ~overlayClassName: string=?,
  ~overlayStyle: ReactDOM.style=?,
  ~placement: [#bottom | #bottomLeft | #bottomRight | #top | #topLeft | #topRight]=?,
  ~trigger: array<[#click | #hover | #contextMenu]>=?,
  ~\"open": bool=?,
  ~onOpenChange: bool => unit=?,
) => React.element = "Dropdown"

module Button = {
    @react.component @module("antd") @scope("Dropdown")
    external make: (
        ~children: React.element=?,
        ~buttonsRender: array<React.element> => array<React.element>=?,
        ~loading: Button.Loading.t=?,
        ~danger: bool=?,
        ~icon: React.element=?,
        ~size: Button.size=?,
        ~\"type": Button.buttonType=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~className: string=?,
    ) => React.element = "Button"
}