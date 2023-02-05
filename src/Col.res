type flexType
external fromInt: int => flexType = "%identity"
external fromStr: string => flexType = "%identity"
external fromOption: [|#none |#auto] => flexType = "%identity"

type colSizeObj = {
    flex?: flexType,
    span?: string,
    order?: string,
    offset?: string,
    push?: string,
    pull?: string,
}

type colSize
external fromInt: int => colSize = "%identity"
external fromStr: string => colSize = "%identity"
external fromObj: colSizeObj => colSize = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~flex: string=?,
    ~offset: int=?,
    ~order: int=?,
    ~pull: int=?,
    ~push: int=?,
    ~span: int=?,
    ~xs: colSize=?,
    ~sm: colSize=?,
    ~md: colSize=?,
    ~lg: colSize=?,
    ~xl: colSize=?,
    ~xxl: colSize=?,
    ~prefixCls: string=?,
) => React.element = "Col"