type animatedConfig = {
    inkBar: bool,
    tabPane: bool,
}
type animated
external fromBool: bool => animated = "%identity"
external fromConfig: animatedConfig => animated = "%identity"

type editableConfigInfo = {
    key?: string,
    event: ReactEvent.Synthetic.t
}
type editableConfig = {
    onEdit: ([#add |#remove], editableConfigInfo) => (),
    showAdd?: bool,
    removeIcon?: React.element,
    addIcon?: React.element
}

type tabsLocale = {
    dropdownAriaLabel?: string,
    removeAriaLabel?: string,
    addAriaLabel?: string,
}

type tabBarExtraContentConfig = {
    left?: React.element,
    right?: React.element
}
type tabBarExtraContent
external fromEl: React.element => tabBarExtraContent = "%identity"
external fromConfig: tabBarExtraContentConfig => tabBarExtraContent = "%identity"

type tabBarProps = {
    id: string,
    activeKey: string,
    animated: animatedConfig,
    tabPosition: [#top |#bottom |#left |#right],
    rtl: bool,
    mobile: bool,
    editable: editableConfig,
    locale: tabsLocale,
    moreIcon: React.element,
    moreTransitionName: string,
    tabBarGutter: int,
    onTabClick: (string, ReactEvent.Synthetic.t) => (),
    onTabScroll: ([|#left |#right |#top |#bottom]) => (),
    extra: tabBarExtraContent,
    style: ReactDOM.style,
    panes: ReactDOM.style,
}

type scroll = {
    direction: [#left |#right |#top |#bottom]
}

type item = {
    key: string,
    label: React.element,
    className?: string,
    style?: ReactDOM.style,
    disabled?: bool,
    children?: React.element,
    forceRender?: bool,
    closable?: bool,
    closeIcon?: React.element,
    prefixCls?: string,
    tabKey?: string,
    id?: string,
    animated?: bool,
    active?: bool,
    destroyInactiveTabPane?: bool,
}

type t = {
    activeKey?: string,
    addIcon?: React.element,
    animated?: animated,
    centered?: bool,
    defaultActiveKey?: string,
    hideAdd?: bool,
    items?: array<item>,
    moreIcon?: React.element,
    popupClassName?: string,
    renderTabBar?: (tabBarProps, React.element) => React.element,
    size?: [#large |#middle |#small],
    tabBarExtraContent?: tabBarExtraContent,
    tabBarGutter?: int,
    tabBarStyle?: ReactDOM.style,
    tabPosition?: [#top |#right |#bottom |#left],
    destroyInactiveTabPane?: bool,
    \"type"?: [#line |#card |#"editable-card"],
    onChange?: string => (), // ?
    onTabClick?: (string, ReactEvent.Mouse.t) => (),
    onTabScroll?: scroll => (),
    onEdit?: (ReactEvent.Synthetic.t, [#add |#remove]) => (),
}

@react.component @module("antd")
external make: (
    ~activeKey: string=?,
    ~addIcon: React.element=?,
    ~animated: animated=?,
    ~centered: bool=?,
    ~defaultActiveKey: string=?,
    ~hideAdd: bool=?,
    ~items: array<item>=?,
    ~moreIcon: React.element=?,
    ~popupClassName: string=?,
    ~renderTabBar: (tabBarProps, React.element) => React.element=?,
    ~size: [#large |#middle |#small]=?,
    ~tabBarExtraContent: tabBarExtraContent=?,
    ~tabBarGutter: int=?,
    ~tabBarStyle: ReactDOM.style=?,
    ~tabPosition: [#top |#right |#bottom |#left]=?,
    ~destroyInactiveTabPane: bool=?,
    ~\"type": [#line |#card |#"editable-card"]=?,
    ~onChange: string => ()=?, 
    ~onTabClick: (string, ReactEvent.Mouse.t) => ()=?,
    ~onTabScroll: scroll => ()=?,
    ~onEdit: (ReactEvent.Synthetic.t, [#add |#remove]) => ()=?,
) => React.element = "Tabs"