type breakpoint = [#xs |#sm |#md |#lg |#xl |#xxl]
type ellipsisConfig = {
    showTitle?: bool,
}

module Ellipsis = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: ellipsisConfig => t = "%identity"
}

type filterConfirmProps = {
    closeDropdown: bool
}

module ColumnFilterItemValue = {
    type t
    external fromBool: bool => t = "%identity"
    external fromNumber: float => t = "%identity"
    external fromStr: string => t = "%identity"
}

type rec columnFilterItem = {
    text: React.element,
    value: ColumnFilterItemValue.t,
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

module FilterSearch = {
    type t
    external fromBool: bool => t = "%identity"
    external fromFn: ((string, columnFilterItem) => bool) => t = "%identity"
}

module Fixed = {
    type t
    external fromBool: bool => t = "%identity"
    external fromStr: string => t = "%identity"
}

module ShowSorterTooltip = {
    type t
    external fromBool: bool => t = "%identity"
    external fromTooltip: Tooltip.t => t = "%identity"
}

type sorterConfig<'a> = {
    compare?: ('a, 'a) => int,
    multiple?: int
}

module Sorter = {
    type t
    external fromTrue: bool => t = "%identity"
    external fromFn: (('a, 'a) => int) => t = "%identity"
    external fromConfig: sorterConfig<'a> => t = "%identity"
}

type column<'a> = {
    align?: [#left |#right |#center],
    className?: string,
    colSpan?: int,
    dataIndex?: array<string>,
    defaultFilteredValue?: array<string>,
    filterResetToDefaultFilteredValue?: bool,
    defaultSortOrder?: [|#ascend |#descend],
    ellipsis?: Ellipsis.t,
    filterDropdown?: filterDropdownProps => React.element,
    filterDropdownOpen?: bool,
    filtered?: bool,
    filteredValue?: array<string>,
    filterIcon?: bool => React.element,
    filterMultiple?: bool,
    filterMode?: [#menu |#tree],
    filterSearch?: FilterSearch.t,
    filters?: array<columnFilterItem>,
    fixed?: Fixed.t,
    key?: string,
    render?: (string, 'a, int) => React.element,
    responsive?: array<breakpoint>,
    rowScope?: [#row |#rowgroup],
    shouldCellUpdate?: ('a, 'a) => bool,
    showSorterTooltip?: ShowSorterTooltip.t,
    sortDirections?: array<[#ascend |#descend]>,
    sorter?: Sorter.t,
    sortOrder?: Js.null<[#ascend |#descend]>,
    title?: React.element,
    width?: string,
    onCell?: ('a, int) => array<Webapi.Dom.Attr.t>,
    onFilter?: (ColumnFilterItemValue.t, 'a) => bool,
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

module Body = {
    type t
    external fromHeaderOrBody: headerOrBody => t = "%identity"
    external fromFn: ((array<'a>, scrollBodyInfo) => React.element) => t = "%identity"
}

type components = {
    table?: React.element,
    header?: headerOrBody,
    body?: Body.t
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
    fixed?: Fixed.t,
    indentSize?: int,
    rowExpandable?: 'a => bool,
    showExpandColumn?: bool,
    onExpand: (bool, 'a) => (),
    onExpandedRowsChange: array<string> => (),
}

module Loading = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: Tooltip.t => t = "%identity"
}

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

module Page = {
    type t
    external fromFalse: bool => t = "%identity"
    external fromPagination: Pagination.t => t = "%identity"
}

type selectionsConfig = {
    key: string,
    text: React.element,
    onSelect: array<string> => (),
}

module Selections = {
    type t
    external fromTrue: bool => t = "%identity"
    external fromConfig: selectionsConfig => t = "%identity"
}

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
    selections?: Selections.t,
    \"type"?: [#checkbox |#radio],
    onChange?: (array<string>, array<'a>, onChangeInfo) => (),
    onSelect?: ('a, bool, array<'a>, ReactEvent.Synthetic.t) => (),
    onSelectAll?: (bool, array<'a>, array<'a>) => (),
    onSelectInvert?: array<string> => (),
    onSelectNone?: () => (),
    onSelectMultiple?: (bool, array<'a>, array<'a>) => (),
}

module ScrollX = {
    type t
    external fromStr: string => t = "%identity"
    external fromNumber: float => t = "%identity"
    external fromTrue: bool => t = "%identity"
}

module ScrollY = {
    type t
    external fromStr: string => t = "%identity"
    external fromNumber: float => t = "%identity"
}

type scroll = {
    scrollToFirstRowOnChange: bool,
    x: ScrollX.t,
    y: ScrollY.t
}

type stickyConfig = {
    offsetHeader?: float,
    offsetScroll?: float,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
}

module Sticky = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: stickyConfig => t = "%identity"
}

module FilterValue = {
    type t
    @send external filterValueToString: t => string = "toString"
}

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
    ~loading: Loading.t=?,
    ~locale: locale=?,
    ~pagination: Page.t=?,
    ~rowClassName: ('a, int) => string=?,
    ~rowKey: 'a => string=?,
    ~rowSelection: rowSelection<'a>=?,
    ~scroll: scroll=?,
    ~showHeader: bool=?,
    ~showSorterTooltip: ShowSorterTooltip.t=?,
    ~size: [#large |#middle |#small]=?,
    ~sortDirections: array<[#ascend |#descend]>=?,
    ~sticky: Sticky.t=?,
    ~summary: array<'a> => React.element=?,
    ~tableLayout: [#"-" |#auto |#fixed]=?,
    ~title: array<'a> => React.element=?,
    ~onChange: (Pagination.tableConfig, Js.Dict.t<Js.null<FilterValue.t>>, array<sorterResult<'a>>, currentDataSource<'a>) => ()=?,
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
        ~ellipsis: Ellipsis.t=?,
        ~filterDropdown: filterDropdownProps => React.element=?,
        ~filterDropdownOpen: bool=?,
        ~filtered: bool=?,
        ~filteredValue: array<string>=?,
        ~filterIcon: bool => React.element=?,
        ~filterMultiple: bool=?,
        ~filterMode: [#menu |#tree]=?,
        ~filterSearch: FilterSearch.t=?,
        ~filters: array<columnFilterItem>=?,
        ~fixed: Fixed.t=?,
        ~key: string=?,
        ~render: (string, 'a, int) => React.element=?,
        ~responsive: array<breakpoint>=?,
        ~rowScope: [#row |#rowgroup]=?,
        ~shouldCellUpdate: ('a, 'a) => bool=?,
        ~showSorterTooltip: ShowSorterTooltip.t=?,
        ~sortDirections: array<[#ascend |#descend]>=?,
        ~sorter: Sorter.t=?,
        ~sortOrder: Js.null<[#ascend |#descend]>=?,
        ~title: React.element=?,
        ~width: string=?,
        ~onCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,
        ~onFilter: (ColumnFilterItemValue.t, 'a) => bool=?,
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
        ~ellipsis: Ellipsis.t=?,
        ~filterDropdown: filterDropdownProps => React.element=?,
        ~filterDropdownOpen: bool=?,
        ~filtered: bool=?,
        ~filteredValue: array<string>=?,
        ~filterIcon: bool => React.element=?,
        ~filterMultiple: bool=?,
        ~filterMode: [#menu |#tree]=?,
        ~filterSearch: FilterSearch.t=?,
        ~filters: array<columnFilterItem>=?,
        ~fixed: Fixed.t=?,
        ~key: string=?,
        ~render: (string, 'a, int) => React.element=?,
        ~responsive: array<breakpoint>=?,
        ~rowScope: [#row |#rowgroup]=?,
        ~shouldCellUpdate: ('a, 'a) => bool=?,
        ~showSorterTooltip: ShowSorterTooltip.t=?,
        ~sortDirections: array<[#ascend |#descend]>=?,
        ~sorter: Sorter.t=?,
        ~sortOrder: Js.null<[#ascend |#descend]>=?,
        ~title: React.element=?,
        ~width: string=?,
        ~onCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,
        ~onFilter: (ColumnFilterItemValue.t, 'a) => bool=?,
        ~onFilterDropdownOpenChange: bool => ()=?,
        ~onHeaderCell: ('a, int) => array<Webapi.Dom.Attr.t>=?,       
    ) => React.element = "ColumnGroup"
}

module Summary = {
    module Fixed = {
        type t
        external fromBool: bool => t = "%identity"
        external fromVariant: [#top |#bottom] => t = "%identity"
    }

    @react.component @module("antd") @scope("Table")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~fixed: Fixed.t=?,
    ) => React.element = "Summary"
}