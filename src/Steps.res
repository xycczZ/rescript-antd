type status = [#error | #process | #finish | #wait]

type progressDotInfo = {
    index: int,
    status: status,
    title: React.element,
    description: React.element
}

type progressDot
external fromBool: bool => progressDot = "%identity"
external fromFn: (({..}, progressDotInfo) => React.element) => progressDot = "%identity"

type itemRenderInfo = {
    index: int,
    status: status,
    title: React.element,
    description: React.element,
    node: React.element,
}
type icons = {
    finish: React.element,
    error: React.element,
}
type item = {
    prefixCls?: string,
    className?: string,
    style?: ReactDOM.style,
    wrapperStyle?: ReactDOM.style,
    iconPrefix?: string,
    active?: bool,
    disabled?: bool,
    stepIndex?: int,
    stepNumber?: int,
    status?: status,
    title?: React.element,
    subTitle?: React.element,
    description?: React.element,
    tailContent?: React.element,
    icon?: React.element,
    icons?: icons,
    onClick?: ReactEvent.Mouse.t => (),
    onStepClick?: int => (),
    progressDot?: progressDot,
    stepIcon?: itemRenderInfo,
    render?: React.element => React.element,
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~current: int=?,
    ~direction: [#horizontal |#vertical]=?,
    ~initial: int=?,
    ~labelPlacement: [#horizontal |#vertical]=?,
    ~percent: int=?,
    ~progressDot: progressDot=?,
    ~responsive: bool=?,
    ~size: [#default |#small]=?,
    ~status: [#wait |#process |#finish |#error]=?,
    ~\"type": [#default |#navigation |#inline]=?,
    ~onChange: int => ()=?,
    ~items: array<item>=?,
    ~iconPrefix: string=?,
    ~prefixCls: string=?,
    ~responsive: bool=?,
    ~children: React.element=?,
) => React.element = "Steps"