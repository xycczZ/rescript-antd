type autoSizeConfig = {
    minRows: int,
    maxRows: int
}

type autoSize
external fromBool: bool => autoSize = "%identity"
external fromConfig: autoSizeConfig => autoSize = "%identity"

type optionProps = {
    value?: string,
    key?: string,
    disabled?: bool,
    children?: React.element,
    className?: string,
    style?: ReactDOM.style,
}

type filterOption
external fromBool: bool => filterOption = "%identity"
external fromProps: optionProps => filterOption = "%identity"

type dataDrivenOptionProps = {
    value?: string,
    key?: string,
    disabled?: bool,
    children?: React.element,
    className?: string,
    style?: ReactDOM.style,
    label?: React.element
}

type sizeInfo = {
    width?: float,
    height?: float,
}

type rec t = {
    autoFocus?: bool,
    autoSize?: autoSize,
    defaultValue?: string,
    filterOption?: filterOption,
    getPopupContainer?: () => Webapi.Dom.HtmlElement.t,
    notFoundContent?: React.element,
    placement?: [#top |#bottom],
    prefix?: array<string>,
    split?: string,
    status?: [#error |#warning],
    validateSearch?: (string, t) => bool,
    className?: string,
    transitionName?: string,
    direction?: [#ltr |#rtl],
    prefixCls?: string,
    value?: string,
    onChange?: string => (),
    onSelect?: (optionProps, string) => (),
    onSearch?: (string, string) => (),
    onFocus?: ReactEvent.Synthetic.t => (),
    onBlur?: ReactEvent.Synthetic.t => (),
    dropdownClassName?: string,
    \"open"?: bool,
    options?: array<dataDrivenOptionProps>,
    onResize?: sizeInfo => (),
}

@react.component @module("antd")
external make: (
    ~autoFocus: bool=?,
    ~autoSize: autoSize=?,
    ~defaultValue: string=?,
    ~filterOption: filterOption=?,
    ~getPopupContainer: () => Webapi.Dom.HtmlElement.t=?,
    ~notFoundContent: React.element=?,
    ~placement: [#top |#bottom]=?,
    ~prefix: array<string>=?,
    ~split: string=?,
    ~status: [#error |#warning]=?,
    ~validateSearch: (string, t) => bool=?,
    ~className: string=?,
    ~transitionName: string=?,
    ~direction: [#ltr |#rtl]=?,
    ~prefixCls: string=?,
    ~value: string=?,
    ~onChange: string => ()=?,
    ~onSelect: (optionProps, string) => ()=?,
    ~onSearch: (string, string) => ()=?,
    ~onFocus: ReactEvent.Synthetic.t => ()=?,
    ~onBlur: ReactEvent.Synthetic.t => ()=?,
    ~dropdownClassName: string=?,
    ~\"open": bool=?,
    ~options: array<dataDrivenOptionProps>=?,
    ~onResize: sizeInfo => ()=?,
    ~className: string=?,
) => React.element = "Mentions"