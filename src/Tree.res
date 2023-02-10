type rec node = {
    checkable?: bool,
    disabled?: bool,
    disableCheckbox?: bool,
    icon?: React.element,
    isLeaf?: bool,
    selectable?: bool,
    switcherIcon?: React.element,
    className?: string,
    style?: ReactDOM.style,
    key: string,
    title?: () => React.element,
    children?: array<node>,
}

type rec eventNode = {
    checkable?: bool,
    disabled?: bool,
    disableCheckbox?: bool,
    icon?: React.element,
    isLeaf?: bool,
    selectable?: bool,
    switcherIcon?: React.element,
    className?: string,
    style?: ReactDOM.style,
    key: string,
    title?: () => React.element,
    children?: array<node>,

    expanded: bool,
    selected: bool,
    checked: bool,
    loaded: bool,
    loading: bool,
    halfChecked: bool,
    dragOver: bool,
    dragOverGapTop: bool,
    dragOverGapBottom: bool,
    pos: string,
    active: bool,
}

type allowDropOptions = {
    dragNode: node,
    dropNode: node,
    dropPosition: @int[@as(-1)#n1 |@as(0)#0 |@as(1)#1]
}

type checkedKeysConfig = {
    checked: array<string>,
    halfChecked: array<string>
}

module CheckedKeys = {
    type t
    external fromArr: array<string> => t = "%identity"
    external fromConfig: checkedKeysConfig => t = "%identity"
}

module IconType = {
    type t
    external fromEl: React.element => t = "%identity"
    external fromFalse: bool => t = "%identity"
}
type draggableConfig = {
    icon?: IconType.t,
    nodeDraggable?: node => bool,
}

module Draggable = {
    type t
    external fromBool: bool => t = "%identity"
    external fromFn: (node => bool) => t = "%identity"
    external fromConfig: draggableConfig => t = "%identity"
}

type fieldNames = {
    title?: string,
    key?: string,
    children?: string,
}

module CheckParam = {
    type t
    type checkParamObj = {
        checked: array<string>,
        halfChecked: array<string>,
    }
    external toObj: t => checkParamObj = "%identity"
    external toArr: t => array<string> = "%identity"
}

type checkedNodesPosition = {
    node: node,
    pos: string
}

type checkInfo = {
    event: [#check],
    node: eventNode,
    checked: bool,
    nativeEvent: ReactEvent.Mouse.t,
    checkedNodes: array<node>,
    checkedNodesPositions?: array<checkedNodesPosition>,
    halfCheckedKeys: array<string>
}

type selectInfo = {
    event: [#select],
    selected: bool,
    node: eventNode,
    selectedNodes: array<node>,
    nativeEvent: ReactEvent.Mouse.t
}

type loadInfo = {
    event: [#load],
    node: eventNode
}

type mouseEventInfo = {
    event: ReactEvent.Mouse.t,
    node: eventNode,
}

type dragEventInfo = {
    event: ReactEvent.Synthetic.t,
    node: eventNode,
}

type dragEnterEventInfo = {
    event: ReactEvent.Synthetic.t,
    node: eventNode,
    expandedKeys: array<string>,
}

type dropEventInfo = {
    event: ReactEvent.Synthetic.t,
    node: eventNode,
    dragNode: eventNode,
    dragNodesKeys: array<string>,
    dropPosition: int,
    dropToGap: bool,
}

type expandEventInfo = {
    node: eventNode,
    expanded: bool,
    nativeEvent: ReactEvent.Mouse.t,
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~allowDrop: allowDropOptions => bool=?,
    ~autoExpandParent: bool=?,
    ~blockNode: bool=?,
    ~checkable: bool=?,
    ~checkedKeys: CheckedKeys.t=?,
    ~checkStrictly: bool=?,
    ~defaultCheckedKeys: array<string>=?,
    ~defaultExpandAll: bool=?,
    ~defaultExpandedKeys: array<string>=?,
    ~defaultExpandParent: bool=?,
    ~defaultSelectedKeys: array<string>=?,
    ~disabled: bool=?,
    ~draggable: Draggable.t=?,
    ~expandedKeys: array<string>=?,
    ~fieldNames: fieldNames=?,
    ~filterTreeNode: eventNode => bool=?,
    ~height: float=?,
    ~icon: React.element=?,
    ~loadData: eventNode => Promise.t<'a>=?,
    ~loadedKeys: array<string>=?,
    ~multiple: bool=?,
    ~rootClassName: string=?,
    ~rootStyle: ReactDOM.style=?,
    ~selectable: bool=?,
    ~selectedKeys: array<string>=?,
    ~showIcon: bool=?,
    ~showLine: bool=?,
    ~switcherIcon: React.element=?,
    ~titleRender: node => React.element=?,
    ~treeData: array<node>=?,
    ~virtual: bool=?,
    ~onCheck: (CheckParam.t, checkInfo) => ()=?,
    ~onSelect: (array<string>, selectInfo) => ()=?,
    ~onLoad: (array<string>, loadInfo) => ()=?,
    ~onMouseEnter: mouseEventInfo => ()=?,
    ~onMouseLeave: mouseEventInfo => ()=?,
    ~onRightClick: mouseEventInfo => ()=?,
    ~onDragStart: dragEventInfo => ()=?,
    ~onDragEnter: dragEnterEventInfo => ()=?,
    ~onDragOver: dragEventInfo => ()=?,
    ~onDragLeave: dragEventInfo => ()=?,
    ~onDragEnd: dragEventInfo => ()=?,
    ~onDrop: dropEventInfo => ()=?,
    ~onActiveChange: string => ()=?,
    ~onExpand: (array<string>, expandEventInfo) => ()=?,
) => React.element = "Tree"