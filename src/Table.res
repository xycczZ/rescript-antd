type breakpoint = [#xs |#sm |#md |#lg |#xl |#xxl]
type ellipsisConfig = {
    showTitle?: bool,
}
type ellipsis
external fromBool: bool => ellipsis = "%identity"
external fromConfig: ellipsisConfig => ellipsis = "%identity"

type filterConfirmProps = {
    closeDropdown: bool
}
type columnFilterItemValue
external fromBool: bool => columnFilterItemValue = "%identity"
external fromNumber: float => columnFilterItemValue = "%identity"
external fromStr: string => columnFilterItemValue = "%identity"

type rec columnFilterItem = {
    text: React.element,
    value: columnFilterItemValue,
    children?: array<columnFilterItem>,
}
type filterDropdownProps = {
    prefixCls: string,
    setSelectedKeys: array<string> => (),
    selectedKeys: array<string>,
    confirm: filterConfirmProps => (),
    clearFilters?: () => (),
    filters?: array<columnFilterItem>,
    visible: bool,
}

type filterSearch
external fromBool: bool => filterSearch = "%identity"
external fromFn: ((string, columnFilterItem) => bool) => filterSearch = "%identity"

type fixed
external fromBool: bool => fixed = "%identity"
external fromStr: string => fixed = "%identity"

type showSorterTooltip
external fromBool: bool => showSorterTooltip = "%identity"
external fromTooltip: Tooltip.t => showSorterTooltip = "%identity"

type sorterConfig<'a> = {
    compare?: ('a, 'a) => int,
    multiple?: int
}
type sorter
external fromTrue: bool => sorter = "%identity"
external fromFn: (('a, 'a) => int) => sorter = "%identity"
external fromConfig: sorterConfig<'a> => sorter = "%identity"

type column<'a> = {
    align?: [#left |#right |#center],
    className?: string,
    colSpan?: int,
    dataIndex?: array<string>,
    defaultFilteredValue?: array<string>,
    filterResetToDefaultFilteredValue?: bool,
    defaultSortOrder?: [|#ascend |#descend],
    ellipsis?: ellipsis,
    filterDropdown?: filterDropdownProps => React.element,
    filterDropdownOpen?: bool,
    filtered?: bool,
    filteredValue?: array<string>,
    filterIcon?: bool => React.element,
    filterMultiple?: bool,
    filterMode?: [#menu |#tree],
    filterSearch?: filterSearch,
    filters?: array<columnFilterItem>,
    fixed?: fixed,
    key?: string,
    render?: (string, 'a, int) => React.element,
    responsive?: array<breakpoint>,
    rowScope?: [#row |#rowgroup],
    shouldCellUpdate?: ('a, 'a) => bool,
    showSorterTooltip?: showSorterTooltip,
    sortDirections?: array<[#ascend |#descend]>,
    sorter?: sorter,
    sortOrder?: Js.null<[#ascend |#descend]>,
    title?: React.element,
    width?: string,
    onCell?: ('a, int) => array<Webapi.Dom.Attr.t>,
    onFilter?: (columnFilterItemValue, 'a) => bool,
    onFilterDropdownOpenChange?: bool => (),
    onHeaderCell?: ('a, int) => array<Webapi.Dom.Attr.t>,
}

type headerOrBody = {
    wrapper?: React.element,
    row?: React.element,
    cell?: React.element,
}
type refInner = {
    scrollLeft: float,
}
type onScrollInfo = {
    currentTarget?: Webapi.Dom.HtmlElement.t,
    scrollLeft?: float,
}
type scrollBodyInfo = {
    scrollbarSize: int,
    ref: React.ref<refInner>,
    onScroll: onScrollInfo => (),
}
type body
external fromHeaderOrBody: headerOrBody => body = "%identity"
external fromFn: ((array<'a>, scrollBodyInfo) => React.element) => body = "%identity"
type components = {
    table?: React.element,
    header?: headerOrBody,
    body?: body
}

type renderExpandIconProps<'a> = {
    prefixCls: string,
    expanded: bool,
    record: 'a,
    expandable: bool,
    onExpand: ('a, ReactEvent.Mouse.t) => (),
}
type expandable<'a> = {
    childrenColumnName?: string,
    columnTitle?: React.element,
    columnWidth?: string,
    defaultExpandAllRows?: bool,
    defaultExpandedRowKeys?: array<string>,
    expandedRowClassName?: ('a, int, int) => string,
    expandedRowKeys?: array<string>,
    expandedRowRender?: ('a, int, int, bool) => React.element,
    expandIcon?: renderExpandIconProps<'a> => React.element,
    expandRowByClick?: bool,
    fixed?: fixed,
    indentSize?: int,
    rowExpandable?: 'a => bool,
    showExpandColumn?: bool,
    onExpand: (bool, 'a) => (),
    onExpandedRowsChange: array<string> => (),
}

type loading
external fromBool: bool => loading = "%identity"
external fromConfig: Tooltip.t => loading = "%identity"

type locale = {
    filterTitle?: string,
    filterConfirm?: React.element,
    filterReset?: React.element,
    filterEmptyText?: React.element,
    filterCheckall?: React.element,
    filterSearchPlaceholder?: string,
    emptyText?: () => React.element,
    selectAll?: React.element,
    selectNone?: React.element,
    selectInvert?: React.element,
    selectionAll?: React.element,
    sortTitle?: string,
    expand?: string,
    collapse?: string,
    triggerDesc?: string,
    triggerAsc?: string,
    cancelSort?: string,
}

type pagination
external fromFalse: bool => pagination = "%identity"
external fromPagination: Pagination.t => pagination = "%identity"

type selectionsConfig = {
    key: string,
    text: React.element,
    onSelect: array<string> => (),
}
type selections
external fromTrue: bool => selections = "%identity"
external fromConfig: selectionsConfig => selections = "%identity"

type onChangeInfo = {
    \"type": [#all |#none |#invert |#single |#multiple]
}

type rowSelection<'a> = {
    checkStrictly?: bool,
    columnTitle?: React.element,
    columnWidth?: string,
    fixed?: bool,
    getCheckboxProps?: 'a => Checkbox.t<'a>,
    hideSelectAll?: bool,
    preserveSelectedRowKeys?: bool,
    renderCell?: (bool, 'a, int, React.element) => React.element,
    selectedRowKeys?: array<string>,
    defaultSelectedRowKeys?: array<string>,
    selections?: selections,
    \"type"?: [#checkbox |#radio],
    onChange?: (array<string>, array<'a>, onChangeInfo) => (),
    onSelect?: ('a, bool, array<'a>, ReactEvent.Synthetic.t) => (),
    onSelectAll?: (bool, array<'a>, array<'a>) => (),
    onSelectInvert?: array<string> => (),
    onSelectNone?: () => (),
    onSelectMultiple?: (bool, array<'a>, array<'a>) => (),
}

type scrollX
external fromStr: string => scrollX = "%identity"
external fromNumber: float => scrollX = "%identity"
external fromTrue: bool => scrollX = "%identity"

type scrollY
external fromStr: string => scrollY = "%identity"
external fromNumber: float => scrollY = "%identity"

type scroll = {
    scrollToFirstRowOnChange: bool,
    x: scrollX,
    y: scrollY
}

type stickyConfig = {
    offsetHeader?: float,
    offsetScroll?: float,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
}
type sticky
external fromBool: bool => sticky = "%identity"
external fromConfig: stickyConfig => sticky = "%identity"

type filterValue
@send external filterValueToString: filterValue => string = "toString"

type sorterResult<'a> = {
    column?: column<'a>,
    order?: Js.null<[#descend |#ascend]>,
    field?: array<string>,
    columnKey?: string,
}

type currentDataSource<'a> = {
    currentDataSource: array<'a>,
    action: [#paginate |#sort |#filter]
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~bordered: bool=?,
    ~columns: array<column<'a>>=?,
    ~components: components=?,
    ~dataSource: array<'a>=?,
    ~expandable: expandable<'a>=?,
    ~footer: array<'a> => ()=?,
    ~getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t=?,
    ~loading: loading=?,
    ~locale: locale=?,
    ~pagination: pagination=?,
    ~rowClassName: ('a, int) => string=?,
    ~rowKey: 'a => string=?,
    ~rowSelection: rowSelection<'a>=?,
    ~scroll: scroll=?,
    ~showHeader: bool=?,
    ~showSorterTooltip: showSorterTooltip=?,
    ~size: [#large |#middle |#small]=?,
    ~sortDirections: array<[#ascend |#descend]>=?,
    ~sticky: sticky=?,
    ~summary: array<'a> => React.element=?,
    ~tableLayout: [#"-" |#auto |#fixed]=?,
    ~title: array<'a> => React.element=?,
    ~onChange: (Pagination.tableConfig, Js.Dict.t<Js.null<filterValue>>, array<sorterResult<'a>>, currentDataSource<'a>) => ()=?,
    ~onHeaderRow: (array<string>, int) => array<Webapi.Dom.Attr.t>=?,
    ~onRow: ('a, int) => array<Webapi.Dom.Attr.t>=?,
) => React.element = "Table"

module Column = {
    @react.component @module("antd") @scope("Table")
    external make: (
        ~className: string=?,
        ~align: [#left |#right |#center]=?,
        ~className: string=?,
        ~colSpan: int=?,
        ~dataIndex: array<string>=?,
        ~defaultFilteredValue: array<string>=?,
        ~filterResetToDefaultFilteredValue: bool=?,
        ~defaultSortOrder: [|#ascend |#descend]=?,
        ~ellipsis: ellipsis=?,
        ~filterDropdown: filterDropdownProps => React.element=?,
        ~filterDropdownOpen: bool=?,
        ~filtered: bool=?,
        ~filteredValue: array<string>=?,
        ~filterIcon: bool => React.element=?,
        ~filterMultiple: bool=?,
        ~filterMode: [#menu |#tree]=?,
        ~filterSearch: filterSearch=?,
        ~filters: array<columnFilterItem>=?,
        ~fixed: fixed=?,
        ~key: string=?,
        ~render: (string, 'a, int) => React.element=?,
        ~responsive: array<breakpoint>=?,
        ~rowScope: [#row |#rowgroup]=?,
        ~shouldCellUpdate: ('a, 'a) => bool=?,
        ~showSorterTooltip: showSorterTooltip=?,
        ~sortDirections: array<[#ascend |#descend]>=?,
        ~sorter: sorter=?,
        ~sortOrder: Js.null<[#ascend |#descend]>=?,
        ~title: React.element=?,
        ~width: string=?,
        ~onCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,
        ~onFilter: (columnFilterItemValue, 'a) => bool=?,
        ~onFilterDropdownOpenChange: bool => ()=?,
        ~onHeaderCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,
    ) => React.element = "Column"
}

module ColumnGroup = {
    @react.component @module("antd") @scope("Table")
    external make: (
        ~className: string=?,
        ~children: React.element,
        ~align: [#left |#right |#center]=?,
        ~className: string=?,
        ~colSpan: int=?,
        ~dataIndex: array<string>=?,
        ~defaultFilteredValue: array<string>=?,
        ~filterResetToDefaultFilteredValue: bool=?,
        ~defaultSortOrder: [|#ascend |#descend]=?,
        ~ellipsis: ellipsis=?,
        ~filterDropdown: filterDropdownProps => React.element=?,
        ~filterDropdownOpen: bool=?,
        ~filtered: bool=?,
        ~filteredValue: array<string>=?,
        ~filterIcon: bool => React.element=?,
        ~filterMultiple: bool=?,
        ~filterMode: [#menu |#tree]=?,
        ~filterSearch: filterSearch=?,
        ~filters: array<columnFilterItem>=?,
        ~fixed: fixed=?,
        ~key: string=?,
        ~render: (string, 'a, int) => React.element=?,
        ~responsive: array<breakpoint>=?,
        ~rowScope: [#row |#rowgroup]=?,
        ~shouldCellUpdate: ('a, 'a) => bool=?,
        ~showSorterTooltip: showSorterTooltip=?,
        ~sortDirections: array<[#ascend |#descend]>=?,
        ~sorter: sorter=?,
        ~sortOrder: Js.null<[#ascend |#descend]>=?,
        ~title: React.element=?,
        ~width: string=?,
        ~onCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,
        ~onFilter: (columnFilterItemValue, 'a) => bool=?,
        ~onFilterDropdownOpenChange: bool => ()=?,
        ~onHeaderCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,       
    ) => React.element = "ColumnGroup"
}

module Summary = {
    type fixed
    external fromBool: bool => fixed = "%identity"
    external fromVariant: [#top |#bottom] => fixed = "%identity"

    @react.component @module("antd") @scope("Table")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~fixed: fixed=?,
    ) => React.element = "Summary"
}