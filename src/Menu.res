type renderIconInfo = {
  isSelected?: bool,
  isOpen?: bool,
  isSubMenu?: bool,
  disabled?: bool,
}

module ExpandIcon = {
  type t
  external fromEl: React.element => t = "%identity"
  external fromInfo: (renderIconInfo => React.element) => t = "%identity"
}

module DomEventType = {
  type t
  external fromMouse: (ReactEvent.Mouse.t => unit) => t = "%identity"
  external fromKeyboard: (ReactEvent.Keyboard.t => unit) => t = "%identity"
}

type menuTitltInfo = {
  key: string,
  domEvent: DomEventType.t,
}

module Item = {
  type t
  type submenuType = {
    children?: array<t>,
    disabled?: bool,
    icon?: React.element,
    key?: string,
    label?: React.element,
    popupClassName?: string,
    popupOffset?: array<float>,
    onTitleClick?: menuTitltInfo => unit,
    theme?: [#light | #dark],
  }
  type menuItemType = {
    danger?: bool,
    disabled?: bool,
    icon?: React.element,
    key?: string,
    label?: React.element,
    title?: string,
  }
  type menuItemGroupType = {
    \"type": [#group],
    label?: string,
    children: array<menuItemType>,
  }
  type menuDividerType = {
    \"type": [#divider],
    dashed?: bool,
  }
  external fromSubmenuType: submenuType => t = "%identity"
  external fromMenuItemType: menuItemType => t = "%identity"
  external fromMenuItemGroupType: menuItemGroupType => t = "%identity"
  external fromMenuDividerType: menuDividerType => t = "%identity"
}

type menuInfo = {
  key: string,
  keyPath: array<string>,
  item: React.element,
  domEvent: DomEventType.t,
}

type selectInfo = {
  key: string,
  keyPath: array<string>,
  item: React.element,
  domEvent: DomEventType.t,
  selectedKeys: array<string>,
}

type t = {
  defaultOpenKeys?: array<string>,
  defaultSelectedKeys?: array<string>,
  expandIcon?: ExpandIcon.t,
  forceSubMenuRender?: bool,
  inlineCollapsed?: bool,
  inlineIndent?: int,
  items: array<Item.t>,
  mode?: [#vertical | #horizontal | #inline],
  multiple?: bool,
  openKeys?: array<string>,
  overflowedIndicator?: React.element,
  selectable?: bool,
  selectedKeys?: array<string>,
  style?: ReactDOM.style,
  subMenuCloseDelay?: int,
  subMenuOpenDelay?: int,
  theme?: [#light | #dark],
  triggerSubMenuAction?: [#hover | #click],
  onClick?: menuInfo => unit,
  onDeselect?: selectInfo => unit,
  onSelect?: selectInfo => unit,
  onOpenChange?: array<string> => unit,
}

type arrowConfig = {pointAtCenter: bool}
module Arrow = {
  type t
  external fromBool: bool => t = "%identity"
  external fromArrowConfig: arrowConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
  ~className: string=?,
  ~defaultOpenKeys: array<string>=?,
  ~defaultSelectedKeys: array<string>=?,
  ~expandIcon: ExpandIcon.t=?,
  ~forceSubMenuRender: bool=?,
  ~inlineCollapsed: bool=?,
  ~inlineIndent: int=?,
  ~items: array<Item.t>=?,
  ~mode: [#vertical | #horizontal | #inline]=?,
  ~multiple: bool=?,
  ~openKeys: array<string>=?,
  ~overflowedIndicator: React.element=?,
  ~selectable: bool=?,
  ~selectedKeys: array<string>=?,
  ~style: ReactDOM.style=?,
  ~subMenuCloseDelay: int=?,
  ~subMenuOpenDelay: int=?,
  ~theme: [#light | #dark]=?,
  ~triggerSubMenuAction: [#hover | #click]=?,
  ~onClick: menuInfo => unit=?,
  ~onDeselect: selectInfo => unit=?,
  ~onSelect: selectInfo => unit=?,
  ~onOpenChange: array<string> => unit=?,
) => React.element = "Menu"
