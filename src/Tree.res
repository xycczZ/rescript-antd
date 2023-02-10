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
type checkedKeys
external fromArr: array<string> => checkedKeys = "%identity"
external fromConfig: checkedKeysConfig => checkedKeys = "%identity"

type icon
external fromEl: React.element => icon = "%identity"
external fromFalse: bool => icon = "%identity"
type draggableConfig = {
    icon?: icon,
    nodeDraggable?: node => bool,
}
type draggable
external fromBool: bool => draggable = "%identity"
external fromFn: (node => bool) => draggable = "%identity"
external fromConfig: draggableConfig => draggable = "%identity"

type fieldNames = {
    title?: string,
    key?: string,
    children?: string,
}

type checkParam
type checkParamObj = {
    checked: array<string>,
    halfChecked: array<string>,
}
external toObj: checkParam => checkParamObj = "%identity"
external toArr: checkParam => array<string> = "%identity"

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
    ~checkedKeys: checkedKeys=?,
    ~checkStrictly: bool=?,
    ~defaultCheckedKeys: array<string>=?,
    ~defaultExpandAll: bool=?,
    ~defaultExpandedKeys: array<string>=?,
    ~defaultExpandParent: bool=?,
    ~defaultSelectedKeys: array<string>=?,
    ~disabled: bool=?,
    ~draggable: draggable=?,
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
    ~onCheck: (checkParam, checkInfo) => ()=?,
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