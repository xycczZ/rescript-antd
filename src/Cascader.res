type rec optionType = {
    label: React.element,
    value?: Js.null<string>,
    children?: array<optionType>,

    disabled?: bool,
}

type maxTagCount
external fromInt: int => maxTagCount = "%identity"
external fromVariant: [#responsive] => maxTagCount = "%identity"

type displayValueType = {
    key?: string,
    value?: string,
    label?: React.element,
    title?: string,
    disabled?: bool,
}

type maxTagPlaceholder
external fromDisplayArr: array<displayValueType> => maxTagPlaceholder = "%identity"
external fromEl: React.element => maxTagPlaceholder = "%identity"

type rec options = {
    value: string,
    label?: React.element,
    disabled?: bool,
    children?: array<options>,
    isLeaf?: bool,
}

type numberOrFalse
external fromNumber: float => numberOrFalse = "%identity"
external fromFalse: bool => numberOrFalse = "%identity"

type showSearchConfig = {
    filter?: (string, array<optionType>, Tree.fieldNames) => bool,
    render?: (string, array<optionType>, string, Tree.fieldNames) => React.element,
    sort?: (array<optionType>, array<optionType>, string, Tree.fieldNames) => int,
    matchInputWidth?: bool,
    limit?: numberOrFalse
}
type showSearch
external fromBool: bool => showSearch = "%identity"
external fromConfig: showSearchConfig => showSearch = "%identity"

@react.component @module("antd")
external make: (
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
    ~maxTagCount: maxTagCount=?,
    ~maxTagPlaceholder: maxTagPlaceholder=?,
    ~notFoundContent: string=?,
    ~\"open": bool=?,
    ~options: array<options>=?,
    ~placeholder: string=?,
    ~placement: [#bottomLeft |#bottomRight |#topLeft |#topRight]=?,
    ~showSearch: showSearch=?,
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