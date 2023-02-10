type paginationConfig = {
    position: [#top |#bottom |#both]
}
module Pagination = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: paginationConfig => t = "%identity"
}

type grid = {
    column?: int,
    gutter?: int,
    xs?: int,
    sm?: int,
    md?: int,
    lg?: int,
    xl?: int,
    xxl?: int,
}

type loadingConfig = {
    prefixCls?: string,
    className?: string,
    spinning?: bool,
    style?: ReactDOM.style,
    size?: [#default |#small |#large],
    tip?: React.element,
    delay?: int,
    wrapperClassName?: string,
    indicator?: React.element,
    children?: React.element,
}

module Loading = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: loadingConfig => t = "%identity"
}

type locale = {
    emptyText: React.element
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~bordered: bool=?,
    ~dataSource: array<'item>=?,
    ~footer: React.element=?,
    ~grid: grid=?,
    ~header: React.element=?,
    ~itemLayout: [#vertical]=?,
    ~loading: Loading.t=?,
    ~loadMore: React.element=?,
    ~locale: locale=?,
    ~pagination: Pagination.t=?,
    ~renderItem: ('item, int) => React.element=?,
    ~rowKey: 'item => string=?,
    ~size: [#default |#large |#small]=?,
    ~split: bool=?,
    ~className: string=?,
) => React.element = "List"

module Item = {
    @react.component @module("antd") @scope("List")
    external make: (
        ~children: React.element,
        ~actions: array<React.element>=?,
        ~extra: React.element=?,
        ~className: string=?,
    ) => React.element = "Item"

    module Meta = {
        @react.component @module("antd") @scope("List/Item")
        external make: (
            ~children: React.element=?,
            ~avatar: React.element=?,
            ~description: React.element=?,
            ~title: React.element=?,
            ~className: string=?,
        ) => React.element = "Meta"
    }
}