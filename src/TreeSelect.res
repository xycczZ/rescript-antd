type rec optionType = {
    value?: string,
    title?: React.element,
    label?: React.element,
    key?: string,
    children?: array<optionType>,
    disabled?: bool,
    checkable?: bool,
    disableCheckbox?: bool,
}

type labeledValueType = {
    key?: string,
    value?: string,
    label?: React.element,
    /** Only works on `treeCheckStrictly` */
    halfChecked?: bool,
}

type rec legacyCheckedNode = {
    pos: string,
    node: React.element,
    children?: array<legacyCheckedNode>,
}
type changeEventExtra = {
    preValue: array<labeledValueType>,
    triggerValue: string,
    /** @deprecated Use `onSelect` or `onDeselect` instead. */
    selected?: bool,
    /** @deprecated Use `onSelect` or `onDeselect` instead. */
    checked?: bool,
    /** @deprecated This prop not work as react node anymore. */
    triggerNode: React.element,
    /** @deprecated This prop not work as react node anymore. */
    allCheckedNodes: array<legacyCheckedNode>,
}

type checkedStrategy = [#SHOW_ALL |#SHOW_PARENT |#SHOW_CHILD]
type fieldNames = {
    value?: string,
    label?: string,
    children?: string,
}

module ElOrBool = {
    type t
    external fromBool: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
}

type simpleModeConfig = {
    id?: string,
    pId?: string,
    rootPId?: string,
}

module SimpleMode = {
    type t
    external fromConfig: simpleModeConfig => t = "%identity"
    external fromBool: bool => t = "%identity"
}

type legacyDataNode<'a> = {
    value?: string,
    title?: React.element,
    label?: React.element,
    key?: string,
    children?: array<optionType>,
    disabled?: bool,
    checkable?: bool,
    disableCheckbox?: bool,
    props: 'a,
}

module ExpandAction = {
    type t
    external fromFalse: bool => t = "%identity"
    external fromVariant: [|#click |#doubleClick] => t = "%identity"
}

type t<'a, 'b> = {
    className?: string,
    prefixCls?: string,
    id?: string,
    value?: 'a,
    defaultValue?: 'a,
    onChange?: ('a, array<React.element>, changeEventExtra) => (),
    searchValue?: string,
    /** @deprecated Use `searchValue` instead */
    @deprecated("use `searchValue` instead")
    inputValue?: string,
    onSearch?: string => (),
    autoClearSearchValue?: bool,
    filterTreeNode?: (string, optionType) => bool,
    treeNodeFilterProp?: string,
    onSelect?: ('a, optionType) => (),
    onDeselect?: 'a => (),
    showCheckedStrategy?: checkedStrategy,
    treeNodeLabelProp?: string,
    fieldNames?: fieldNames,
    multiple?: bool,
    treeCheckable?: ElOrBool.t,
    treeCheckStrictly?: bool,
    labelInValue?: bool,
    treeData?: array<optionType>,
    treeDataSimpleMode?: SimpleMode.t,
    loadData?: legacyDataNode<'b> => Promise.t<'b>,
    treeLoadedKeys?: array<string>,
    onTreeLoad?: array<string> => (),
    treeDefaultExpandAll?: bool,
    treeExpandedKeys?: array<string>,
    treeDefaultExpandedKeys?: array<string>,
    onTreeExpand?:array<string> => (),
    treeExpandAction?: ExpandAction.t,
    virtual?: bool,
    listHeight?: float,
    listItemHeight?: float,
    onDropdownVisibleChange?: bool => (),
    treeLine?: bool,
    treeIcon?: React.element,
    showTreeIcon?: bool,
    switcherIcon?: React.element,
    treeMotion?: 'b,

    allowClear?: bool,
    bordered?: bool,
    disabled?: bool,
    popupClassName?: string,
    dropdownMatchSelectWidth?: Select.DropdownMatchSelectWidth.t,
    dropdownRender?: React.element => React.element,
    dropdownStyle?: ReactDOM.style,
    getPopupContainer?: () => Webapi.Dom.HtmlElement.t,
    loading?: bool,
    maxTagCount?: Cascader.MaxTagCount.t,
    maxTagPlaceholder?: Cascader.MaxTagPlaceholder.t,
    notFoundContent?: React.element,
    placeholder?: string,
    placement?: [#bottomLeft |#bottomRight |#topLeft |#topRight],
    showArrow?: bool,
    showSearch?: bool,
    size?: [#large |#middle |#small],
    status?: [#warning |#error],
    suffixIcon?: React.element,
    tagRender?: Select.customTagProps<'a> => React.element,
    direction?: [#ltr | #rtl],
}

@react.component @module("antd")
external make: React.component<t<'a, {..}>> = "TreeSelect"