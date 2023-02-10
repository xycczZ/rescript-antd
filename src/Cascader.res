type rec optionType = {
    label: React.element,
    value?: Js.null<string>,
    children?: array<optionType>,

    disabled?: bool,
}

module MaxTagCount = {
    type t
    external fromInt: int => t = "%identity"
    external fromVariant: [#responsive] => t = "%identity"
}

type displayValueType = {
    key?: string,
    value?: string,
    label?: React.element,
    title?: string,
    disabled?: bool,
}

module MaxTagPlaceholder = {
    type t
    external fromDisplayArr: array<displayValueType> => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

type rec options = {
    value: string,
    label?: React.element,
    disabled?: bool,
    children?: array<options>,
    isLeaf?: bool,
}

module NumberOrFalse = {
    type t
    external fromNumber: float => t = "%identity"
    external fromFalse: bool => t = "%identity"
}

type showSearchConfig = {
    filter?: (string, array<optionType>, Tree.fieldNames) => bool,
    render?: (string, array<optionType>, string, Tree.fieldNames) => React.element,
    sort?: (array<optionType>, array<optionType>, string, Tree.fieldNames) => int,
    matchInputWidth?: bool,
    limit?: NumberOrFalse.t
}

module ShowSearch = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: showSearchConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~allowClear: bool=?,
    ~autoFocus: bool=?,
    ~bordered: bool=?,
    ~clearIcon: React.element=?,
    ~changeOnSelect: bool=?,
    ~className: string=?,
    ~defaultValue: array<string>=?,
    ~disabled: bool,
    ~displayRender: (array<string>, array<optionType>) => React.element=?,
    ~popupClassName: string=?,
    ~dropdownRender: React.element => React.element=?,
    ~expandIcon: React.element=?,
    ~expandTrigger: [#click |#hover]=?,
    ~fieldNames: Tree.fieldNames=?,
    ~getPopupContainer: () => Dom.htmlElement,
    ~loadData: array<optionType> => ()=?,
    ~maxTagCount: MaxTagCount.t=?,
    ~maxTagPlaceholder: MaxTagPlaceholder.t=?,
    ~notFoundContent: string=?,
    ~\"open": bool=?,
    ~options: array<options>=?,
    ~placeholder: string=?,
    ~placement: [#bottomLeft |#bottomRight |#topLeft |#topRight]=?,
    ~showSearch: ShowSearch.t=?,
    ~size: [#large |#middle |#small]=?,
    ~status: [#error |#warning]=?,
    ~style: ReactDOM.style=?,
    ~suffixIcon: React.element=?,
    ~value: array<string>=?,
    ~onChange: (array<string>, array<optionType>) => ()=?,
    ~onDropdownVisibleChange: bool => ()=?,
    ~onPopupVisibleChange: bool => ()=?,
    ~multiple: bool=?,
    ~showCheckedStrategy: [#SHOW_PARENT |#SHOW_CHILD]=?,
    ~removeIcon: React.element=?,
    ~searchValue: string=?,
    ~onSearch: string => ()=?,
    ~dropdownMenuColumnStyle: ReactDOM.style=?,
    ~expandIcon: React.element=?,
    ~loadingIcon: React.element=?,
    ~dropdownPrefixCls: string=?,
) => React.element = "Cascader"