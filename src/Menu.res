type renderIconInfo = {
  isSelected?: bool,
  isOpen?: bool,
  isSubMenu?: bool,
  disabled?: bool,
}
type expandIcon
external fromEl: React.element => expandIcon = "%identity"
external fromInfo: (renderIconInfo => React.element) => expandIcon = "%identity"

type domEventType
external fromMouse: (ReactEvent.Mouse.t => unit) => domEventType = "%identity"
external fromKeyboard: (ReactEvent.Keyboard.t => unit) => domEventType = "%identity"
type menuTitltInfo = {
  key: string,
  domEvent: domEventType,
}

type item
type submenuType = {
  children?: array<item>,
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
external fromSubmenuType: submenuType => item = "%identity"
external fromMenuItemType: menuItemType => item = "%identity"
external fromMenuItemGroupType: menuItemGroupType => item = "%identity"
external fromMenuDividerType: menuDividerType => item = "%identity"

type menuInfo = {
  key: string,
  keyPath: array<string>,
  item: React.element,
  domEvent: domEventType,
}

type selectInfo = {
  key: string,
  keyPath: array<string>,
  item: React.element,
  domEvent: domEventType,
  selectedKeys: array<string>,
}

type t = {
  defaultOpenKeys?: array<string>,
  defaultSelectedKeys?: array<string>,
  expandIcon?: expandIcon,
  forceSubMenuRender?: bool,
  inlineCollapsed?: bool,
  inlineIndent?: int,
  items: array<item>,
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
type arrow
external fromBool: bool => arrow = "%identity"
external fromArrowConfig: arrowConfig => arrow = "%identity"

@react.component @module("antd")
external make: (
  ~defaultOpenKeys: array<string>=?,
  ~defaultSelectedKeys: array<string>=?,
  ~expandIcon: expandIcon=?,
  ~forceSubMenuRender: bool=?,
  ~inlineCollapsed: bool=?,
  ~inlineIndent: int=?,
  ~items: array<item>=?,
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
