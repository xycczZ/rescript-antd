type paginationConfig = {
    position: [#top |#bottom |#both]
}
type pagination
external fromBool: bool => pagination = "%identity"
external fromConfig: paginationConfig => pagination = "%identity"

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
type loading
external fromBool: bool => loading = "%identity"
external fromConfig: loadingConfig => loading = "%identity"

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
    ~loading: loading=?,
    ~loadMore: React.element=?,
    ~locale: locale=?,
    ~pagination: pagination=?,
    ~renderItem: ('item, int) => React.element=?,
    ~rowKey: 'item => string=?,
    ~size: [#default |#large |#small]=?,
    ~split: bool=?,
) => React.element = "List"

module Item = {
    @react.component @module("antd") @scope("List")
    external make: (
        ~children: React.element,
        ~actions: array<React.element>=?,
        ~extra: React.element=?,
    ) => React.element = "Item"

    module Meta = {
        @react.component @module("antd") @scope("List/Item")
        external make: (
            ~children: React.element=?,
            ~avatar: React.element=?,
            ~description: React.element=?,
            ~title: React.element=?,
        ) => React.element = "Meta"
    }
}