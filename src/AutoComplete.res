module FilterOption = {
    type t
    external fromBool: bool => t = "%identity"
    external fromFunc: ((string, string) => bool) => t = "%identity"
}

type componentOption = {
    label: string,
    value: string
}

module DropdownMatchSelectWidth = {
    type t
    external fromBool: bool => t = "%identity"
    external fromNumber: int => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~allowClear: bool=?,
    ~autoFocus: bool=?,
    ~backfill: bool=?,
    ~defaultActiveFirstOption: bool=?,
    ~defaultOpen: bool=?,
    ~defaultValue: string=?,
    ~disabled: bool=?,
    ~popupClassName: string=?,
    ~dropdownMatchSelectWidth: DropdownMatchSelectWidth.t= ?,
    ~filterOption: FilterOption.t = ?,
    ~getPopupContainer: Webapi.Dom.Element.t => Webapi.Dom.Element.t = ?,
    ~notFoundContent: React.element=?,
    ~\"open": bool=?,
    ~options: array<componentOption>=?,
    ~placeholder: string=?,
    ~status: [|#error |#warning]=?,
    ~value: string=?,
    ~onBlur: ReactEvent.Synthetic.t => ()=?,
    ~onChange: string=>()=?,
    ~onDropdownVisibleChange: bool=>()=?,
    ~onFocus: ReactEvent.Synthetic.t => () = ?,
    ~onSearch: string => ()=?,
    ~onSelect: (string, componentOption)=>()=?,
    ~onClear: () => ()=?,
    ~className: string=?,
) => React.element = "AutoComplete"