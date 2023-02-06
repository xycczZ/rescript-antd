type dropdownMatchSelectWidth
external fromBool: bool => dropdownMatchSelectWidth = "%identity"
external fromNumber: float => dropdownMatchSelectWidth = "%identity"

type optionType<'a> = {
    label: React.element,
    value: 'a,
    style?: ReactDOM.style,
    disabled?: bool,
}

type filterOption
external fromBool: bool => filterOption = "%identity"
external fromOptionType: ((string, optionType<'a>) => bool) => filterOption = "%identity"

type customTagProps<'a> = {
    label: React.element,
    value: 'a,
    disabled: bool,
    onClose: (~event: ReactEvent.Mouse.t) => (),
    closable: bool,
}

@react.component @module("antd")
external make: (
    ~allowClear: bool=?,
    ~autoClearSearchValue: bool=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~defaultActiveFirstOption: bool=?,
    ~defaultOpen: bool=?,
    ~clearIcon: React.element=?,
    ~defaultValue: Js.null<'a>=?,
    ~disabled: bool=?,
    ~popupClassName: string=?,
    ~dropdownMatchSelectWidth: dropdownMatchSelectWidth=?,
    ~dropdownRender: React.element => React.element=?,
    ~dropdownStyle: ReactDOM.style=?,
    ~fieldNames: Tree.fieldNames=?,
    ~filterOption: filterOption=?,
    ~filterSort: (optionType<'a>, optionType<'a>) => int=?,
    ~getPopupContainer: () => Webapi.Dom.HtmlElement.t=?,
    ~labelInValue: bool=?,
    ~listHeight: float=?,
    ~loading: bool=?,
    ~maxTagCount: Cascader.maxTagCount=?,
    ~maxTagPlaceholder: Cascader.maxTagPlaceholder=?,
    ~maxTagTextLength: int=?,
    ~menuItemSelectedIcon: React.element=?,
    ~mode: [#multiple |#tags]=?,
    ~notFoundContent: React.element=?,
    ~\"open": bool=?,
    ~optionFilterProp: string=?,
    ~optionLabelProp: string=?,
    ~options: array<optionType<'a>>=?,
    ~placeholder: string=?,
    ~placement: [#bottomLeft |#bottomRight |#topLeft |#topRight]=?,
    ~removeIcon: React.element=?,
    ~searchValue: string=?,
    ~showArrow: bool=?,
    ~showSearch: bool=?,
    ~size: [#large |#middle |#small]=?,
    ~status: [#error |#warning]=?,
    ~suffixIcon: React.element=?,
    ~tagRender: customTagProps<'a> => React.element=?,
    ~tokenSeparators: array<string>=?,
    ~value: 'a=?,
    ~virtual: bool=?,
    ~onBlur: ReactEvent.Synthetic.t => ()=?,
    ~onFocus: ReactEvent.Synthetic.t => ()=?,
    ~onKeyUp: ReactEvent.Keyboard.t => ()=?,
    ~onKeyDown: ReactEvent.Keyboard.t => ()=?,
    ~onInputKeyDown: ReactEvent.Keyboard.t => ()=?,
    ~onMouseDown: ReactEvent.Mouse.t => ()=?,
    ~onClick: ReactEvent.Mouse.t => ()=?,
    ~onMouseEnter: ReactEvent.Mouse.t => ()=?,
    ~onMouseLeave: ReactEvent.Mouse.t => ()=?,
    ~onPopupScroll: ReactEvent.Synthetic.t => ()=?,
    ~onChange: ('a, 'optionTypeOrArr) => ()=?,
    ~onClear: () => ()=?,
    ~onDeselect: 't => ()=?,
    ~onDropdownVisibleChange: bool => ()=?,
    ~onSearch: string => ()=?,
    ~onSelect: ('a, optionType<'a>) => ()=?,
) => React.element = "Select"