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
type jointContent
external fromEl: React.element => jointContent = "%identity"
external fromArgs: argsProps => jointContent = "%identity"

@module("antd") @scope("message") @val
external info: (jointContent, option<int>, option<() => ()>) => Promise.t<bool> = "info"

@module("antd") @scope("message") @val
external success: (jointContent, option<int>, option<() => ()>) => Promise.t<bool> = "success"

@module("antd") @scope("message") @val
external error: (jointContent, option<int>, option<() => ()>) => Promise.t<bool> = "error"

@module("antd") @scope("message") @val
external warning: (jointContent, option<int>, option<() => ()>) => Promise.t<bool> = "warning"

@module("antd") @scope("message") @val
external loading: (jointContent, option<int>, option<() => ()>) => Promise.t<bool> = "loading"

@module("antd") @scope("message") @val
external start: argsProps => Promise.t<bool> = "open"

@module("antd") @scope("message") @val
external destroy: (~key: string=?) => () = "destroy"

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
    info: (jointContent, option<int>, option<() => ()>) => Promise.t<bool>,
    infsuccesso: (jointContent, option<int>, option<() => ()>) => Promise.t<bool>,
    error: (jointContent, option<int>, option<() => ()>) => Promise.t<bool>,
    warning: (jointContent, option<int>, option<() => ()>) => Promise.t<bool>,
    loading: (jointContent, option<int>, option<() => ()>) => Promise.t<bool>,
}

@module("antd") @scope("message") @val
external useMessage: (~config: configOptions=?) => (instance, React.element) = "useMessage"

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
external useInternalMessage: (~config: holderProps=?) => (instance, React.element) = "useInternalMessage"