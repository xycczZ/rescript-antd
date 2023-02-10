type animatedConfig = {
    inkBar: bool,
    tabPane: bool,
}

module Animated = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: animatedConfig => t = "%identity"
}

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

module TabBarExtraContent = {
    type t
    external fromEl: React.element => t = "%identity"
    external fromConfig: tabBarExtraContentConfig => t = "%identity"
}

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
    extra: TabBarExtraContent.t,
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
    animated?: Animated.t,
    centered?: bool,
    defaultActiveKey?: string,
    hideAdd?: bool,
    items?: array<item>,
    moreIcon?: React.element,
    popupClassName?: string,
    renderTabBar?: (tabBarProps, React.element) => React.element,
    size?: [#large |#middle |#small],
    tabBarExtraContent?: TabBarExtraContent.t,
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
    ~className: string=?,
    ~activeKey: string=?,
    ~addIcon: React.element=?,
    ~animated: Animated.t=?,
    ~centered: bool=?,
    ~defaultActiveKey: string=?,
    ~hideAdd: bool=?,
    ~items: array<item>=?,
    ~moreIcon: React.element=?,
    ~popupClassName: string=?,
    ~renderTabBar: (tabBarProps, React.element) => React.element=?,
    ~size: [#large |#middle |#small]=?,
    ~tabBarExtraContent: TabBarExtraContent.t=?,
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