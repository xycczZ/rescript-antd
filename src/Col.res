module FlexType = {
    type t
    external fromInt: int => t = "%identity"
    external fromStr: string => t = "%identity"
    external fromOption: [|#none |#auto] => t = "%identity"
}

type colSizeObj = {
    flex?: FlexType.t,
    span?: string,
    order?: string,
    offset?: string,
    push?: string,
    pull?: string,
}

module ColSize = {
    type t
    external fromInt: int => t = "%identity"
    external fromStr: string => t = "%identity"
    external fromObj: colSizeObj => t = "%identity"
}

type t = {
    flex?: string,
    offset?: int,
    order?: int,
    pull?: int,
    push?: int,
    span?: int,
    xs?: ColSize.t,
    sm?: ColSize.t,
    md?: ColSize.t,
    lg?: ColSize.t,
    xl?: ColSize.t,
    xxl?: ColSize.t,

    children?: React.element,
    className?: string,
    prefixCls?: string,
}

@react.component @module("antd")
external make: React.component<t> = "Col"