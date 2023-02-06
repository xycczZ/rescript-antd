type showQuickJumperConfig = {
    goButton: React.element
}

type showQuickJumper
external fromBool: bool => showQuickJumper = "%identity"
external fromConfig: showQuickJumperConfig => showQuickJumper = "%identity"

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
    showQuickJumper?: showQuickJumper,
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
    showQuickJumper?: showQuickJumper,
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
    ~showQuickJumper: showQuickJumper=?,
    ~showSizeChanger: bool=?,
    ~showTitle: bool=?,
    ~showTotal: (int, (int, int)) => React.element=?,
    ~simple: bool=?,
    ~size: [#small |#default]=?,
    ~total: int=?,
    ~onChange: (int, int) => ()=?,
    ~onShowSizeChange: (int, int) => ()=?,
) => React.element = "Pagination"