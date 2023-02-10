type placement = [
    |#left |#leftTop |#leftBottom |#right |#rightTop 
    |#rightBottom |#top |#topLeft |#topRight |#bottom 
    |#bottomLeft |#bottomRight
]

type animatedConfig = {
    placeholder: bool
}

module Animated = {
    type t
    external fromBool: bool => t = "%identity"
    external fromObj: animatedConfig => t = "%identity"
}

module Target = {
    type t
    external fromEl: Webapi.Dom.HtmlElement.t => t = "%identity"
    external fromFn: (() => Webapi.Dom.HtmlElement.t) => t = "%identity"
    external fromFn2: (() => Js.Null.t<{..}>) => t = "%identity"
    external fromNull: Js.Null.t<{..}> => t = "%identity"
}

type step = {
    arrow?: Menu.Arrow.t,
    target?: Target.t,
    title: React.element,
    description?: React.element,
    placement?: placement,
    mask?: bool,
    className?: string,
    style?: ReactDOM.style,
}

type rec stepProp = {
    arrow?: Menu.Arrow.t,
    target?: Target.t,
    title: React.element,
    description?: React.element,
    placement?: placement,
    mask?: bool,
    className?: string,
    style?: ReactDOM.style,

    prefixCls?: string,
    total?: int,
    current?: int,
    onClose?: () => (),
    onFinish?: () => (),
    renderPanel?: (stepProp, int) => React.element,
    onPrev?: () => (),
    onNext?: () => (),
}

type gap = {
    radius?: int,
    offset?: int
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~arrow: Menu.Arrow.t=?,
    ~placement: placement=?,
    ~onClose: int => ()=?,
    ~onChange: int => ()=?,
    ~onFinish: () => ()=?,
    ~mask: bool=?,
    ~\"open": bool=?,
    ~defaultCurrent: int=?,
    ~current: int=?,
    ~rootClassName: string=?,
    ~prefixCls: string=?,
    ~steps: array<step>,
    ~renderPanel: (stepProp, int) => React.element=?,
    ~gap: gap=?,
    ~animated: Animated.t=?,
) => React.element = "Tour"