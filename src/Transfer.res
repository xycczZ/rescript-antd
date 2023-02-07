type transferDirection = [#left |#right]
type listStyle = {
    direction: transferDirection
}

type transferLocale = {
    titles?: array<React.element>,
    notFoundContent?: array<React.element>,
    searchPlaceholder?: string,
    itemUnit?: string,
    itemsUnit?: string,
    remove?: string,
    selectAll?: string,
    selectCurrent?: string,
    selectInvert?: string,
    removeAll?: string,
    removeCurrent?: string,
}

type paginationTypeConfig = {
    pageSize?: int,
    simple?: bool,
    showSizeChanger?: bool,
    showLessItems?: bool,
}
type paginationType
external fromBool: bool => paginationType = "%identity"
external fromConfig: paginationTypeConfig => paginationType = "%identity"

type selectAllLabelInfo = {
    selectedCount: int,
    totalCount: int,
}

type renderedItem<'a> = {
    renderedText: string,
    renderedEl: React.element,
    item: 'a,
}

type rec transferListProps<'a> = {
    titles?: array<React.element>,
    notFoundContent?: array<React.element>,
    searchPlaceholder?: string,
    itemUnit?: string,
    itemsUnit?: string,
    remove?: string,
    selectAll?: string,
    selectCurrent?: string,
    selectInvert?: string,
    removeAll?: string,
    removeCurrent?: string,

    prefixCls: string,
    titleText: React.element,
    dataSource: array<'a>,
    filterOption?: (string, 'a) => bool,
    style?: ReactDOM.style,
    checkedKeys: array<string>,
    handleFilter: ReactEvent.Synthetic.t => (),
    onItemSelect: (string, bool) => (),
    onItemSelectAll: (array<string>, bool) => (),
    onItemRemove?: array<string> => (),
    handleClear: () => (),
    /** Render item */
    render?: 'a => React.element,
    showSearch?: bool,
    renderList?: transferListBodyProps<'a> => React.element,
    footer?: (transferListProps<'a>, listStyle) => React.element,
    onScroll: ReactEvent.Synthetic.t => (),
    disabled?: bool,
    direction: transferDirection,
    showSelectAll?: bool,
    selectAllLabel?: selectAllLabelInfo => React.element,
    showRemove?: bool,
    pagination?: paginationType,
} and transferListBodyProps<'a> = {
    filteredItems: array<'a>,
    filteredRenderItems: array<renderedItem<'a>>,
    selectedKeys: array<string>,
    titles?: array<React.element>,
    notFoundContent?: array<React.element>,
    searchPlaceholder?: string,
    itemUnit?: string,
    itemsUnit?: string,
    remove?: string,
    selectAll?: string,
    selectCurrent?: string,
    selectInvert?: string,
    removeAll?: string,
    removeCurrent?: string,

    prefixCls: string,
    titleText: React.element,
    dataSource: array<'a>,
    filterOption?: (string, 'a) => bool,
    style?: ReactDOM.style,
    onItemSelect: (string, bool) => (),
    onItemSelectAll: (array<string>, bool) => (),
    onItemRemove?: array<string> => (),
    render?: 'a => React.element,
    showSearch?: bool,
    renderList?: transferListBodyProps<'a> => React.element,
    footer?: (transferListProps<'a>, listStyle) => React.element,
    onScroll: ReactEvent.Synthetic.t => (),
    disabled?: bool,
    direction: transferDirection,
    showSelectAll?: bool,
    selectAllLabel?: selectAllLabelInfo => React.element,
    showRemove?: bool,
    pagination?: paginationType,
}

type t<'a> = {
    prefixCls?: string,
    className?: string,
    disabled?: bool,
    dataSource?: array<'a>,
    targetKeys?: array<string>,
    selectedKeys?: array<string>,
    render?: 'a => React.element,
    onChange?: (array<string>, transferDirection, array<string>) => (),
    onSelectChange?: (array<string>, array<string>) => (),
    style?: ReactDOM.style,
    listStyle?: listStyle => ReactDOM.style,
    operationStyle?: ReactDOM.style,
    titles?: array<React.element>,
    operations?: array<string>,
    showSearch?: bool,
    filterOption?: (string, 'a) => bool,
    locale?: transferLocale,
    footer?: (transferListProps<'a>, listStyle) => React.element,
    rowKey?: 'a => string,
    onSearch?: (transferDirection, string) => (),
    onScroll?: (transferDirection, ReactEvent.Synthetic.t) => (),
    children?: transferListBodyProps<'a> => React.element,
    showSelectAll?: bool,
    selectAllLabels?: array<selectAllLabelInfo => React.element>,
    oneWay?: bool,
    pagination?: paginationType,
    status?: [#warning |#error |#""],
}

@react.component @module("antd")
external make: React.component<t<'a>> = "Transfer"