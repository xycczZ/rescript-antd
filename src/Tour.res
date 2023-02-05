type placement = [
    |#left |#leftTop |#leftBottom |#right |#rightTop 
    |#rightBottom |#top |#topLeft |#topRight |#bottom 
    |#bottomLeft |#bottomRight
]

type animatedConfig = {
    placeholder: bool
}
type animated
external fromBool: bool => animated = "%identity"
external fromObj: animatedConfig => animated = "%identity"

type target
external fromEl: Webapi.Dom.HtmlElement.t => target = "%identity"
external fromFn: (() => Webapi.Dom.HtmlElement.t) => target = "%identity"
external fromFn2: (() => Js.Null.t<{..}>) => target = "%identity"
external fromNull: Js.Null.t<{..}> => target = "%identity"

type step = {
    arrow?: Menu.arrow,
    target?: target,
    title: React.element,
    description?: React.element,
    placement?: placement,
    mask?: bool,
    className?: string,
    style?: ReactDOM.style,
}

type rec stepProp = {
    arrow?: Menu.arrow,
    target?: target,
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
    ~arrow: Menu.arrow=?,
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
    ~animated: animated=?,
) => React.element = "Tour"