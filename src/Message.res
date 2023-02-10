type noticeType = [
    #info | #success | #error | #warning | #loading
]

type argsProps = {
    content: React.element,
    duration?: float,
    \"type"?: noticeType,
    onClose?: () => (),
    icon?: React.element,
    key?: string,
    style?: ReactDOM.style,
    className?: string,
    onClick?: ReactEvent.Mouse.t => ()
}

module JointContent = {
    type t
    external fromEl: React.element => t = "%identity"
    external fromArgs: argsProps => t = "%identity"
}

@module("antd") @scope("message") @val
external info: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool> = "info"

@module("antd") @scope("message") @val
external success: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool> = "success"

@module("antd") @scope("message") @val
external error: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool> = "error"

@module("antd") @scope("message") @val
external warning: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool> = "warning"

@module("antd") @scope("message") @val
external loading: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool> = "loading"

@module("antd") @scope("message") @val
external start: argsProps => Promise.t<bool> = "open"

@module("antd") @scope("message") @val
external destroy: (~key: string=?, ()) => () = "destroy"

type configOptions = {
    top?: float,
    duration?: int,
    prefixCls?: string,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    transitionName?: string,
    maxCount?: int,
    rtl?: bool
}
@module("antd") @scope("message") @val
external config: configOptions => () = "config"

type instance = {
    info: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool>,
    success: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool>,
    error: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool>,
    warning: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool>,
    loading: (~args: JointContent.t, ~duration: option<int>=?, ~onClose: option<() => ()>=?, ()) => Promise.t<bool>,
}

@module("antd") @scope("message") @val
external useMessage: (~config: configOptions=?, ()) => (instance, React.element) = "useMessage"

type holderProps = {
    top?: float,
    duration?: int,
    prefixCls?: string,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    transitionName?: string,
    maxCount?: int,
    rtl?: bool,
    onAllRemoved?: () => ()
}
@module("antd") @scope("message") @val
external useInternalMessage: (~config: holderProps=?, ()) => (instance, React.element) = "useInternalMessage"