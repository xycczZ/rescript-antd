type showQuickJumperConfig = {
    goButton: React.element
}

module ShowQuickJumper = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: showQuickJumperConfig => t = "%identity"
}

type t = {
    current?: int,
    defaultCurrent?: int,
    defaultPageSize?: int,
    disabled?: bool,
    hideOnSinglePage?: bool,
    itemRender?: (int, [#page |#prev |#next |#"jump-prev" |#"jump-next"]) => React.element,
    pageSize?: int,
    pageSizeOptions?: array<int>,
    responsive?: bool,
    showLessItems?: bool,
    showQuickJumper?: ShowQuickJumper.t,
    showSizeChanger?: bool,
    showTitle?: bool,
    showTotal?: (int, (int, int)) => React.element,
    simple?: bool,
    size?: [#small |#default],
    total?: int,
    onChange?: (int, int) => (),
    onShowSizeChange?: (int, int) => (),
}

type tableConfig = {
    position?: array<[#topLeft | #topCenter | #topRight | #bottomLeft | #bottomCenter | #bottomRight]>,

    current?: int,
    defaultCurrent?: int,
    defaultPageSize?: int,
    disabled?: bool,
    hideOnSinglePage?: bool,
    itemRender?: (int, [#page |#prev |#next |#"jump-prev" |#"jump-next"]) => React.element,
    pageSize?: int,
    pageSizeOptions?: array<int>,
    responsive?: bool,
    showLessItems?: bool,
    showQuickJumper?: ShowQuickJumper.t,
    showSizeChanger?: bool,
    showTitle?: bool,
    showTotal?: (int, (int, int)) => React.element,
    simple?: bool,
    size?: [#small |#default],
    total?: int,
    onChange?: (int, int) => (),
    onShowSizeChange?: (int, int) => (),
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~current: int=?,
    ~defaultCurrent: int=?,
    ~defaultPageSize: int=?,
    ~disabled: bool=?,
    ~hideOnSinglePage: bool=?,
    ~itemRender: (int, [#page |#prev |#next |#"jump-prev" |#"jump-next"]) => React.element=?,
    ~pageSize: int=?,
    ~pageSizeOptions: array<int>=?,
    ~responsive: bool=?,
    ~showLessItems: bool=?,
    ~showQuickJumper: ShowQuickJumper.t=?,
    ~showSizeChanger: bool=?,
    ~showTitle: bool=?,
    ~showTotal: (int, (int, int)) => React.element=?,
    ~simple: bool=?,
    ~size: [#small |#default]=?,
    ~total: int=?,
    ~onChange: (int, int) => ()=?,
    ~onShowSizeChange: (int, int) => ()=?,
) => React.element = "Pagination"