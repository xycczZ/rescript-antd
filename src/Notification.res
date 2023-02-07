type noticeType = [
    #info | #success | #error | #warning | #loading
]

type param = {
    bottom?: int,
    btn?: React.element,
    className?: string,
    closeIcon?: React.element,
    description?: React.element,
    duration?: float,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    icon?: React.element,
    key?: string,
    message: React.element,
    placement?: [|#topLeft |#topRight |#bottomLeft |#bottomRight],
    style?: ReactDOM.style,
    top?: float,
    onClick?: () => (),
    onClose?: () => (),
    \"type"?: noticeType,
}

@module("antd") @scope("notification") @val
external info: param => Promise.t<bool> = "info"

@module("antd") @scope("notification") @val
external success: param => Promise.t<bool> = "success"

@module("antd") @scope("notification") @val
external error: param => Promise.t<bool> = "error"

@module("antd") @scope("notification") @val
external warning: param => Promise.t<bool> = "warning"

@module("antd") @scope("notification") @val
external loading: param => Promise.t<bool> = "loading"


@module("antd") @scope("notification") @val
external start: param => Promise.t<bool> = "open"

@module("antd") @scope("notification") @val
external destroy: (~key: string=?) => () = "destroy"

type config = {
    bottom?: float,
    closeIcon?: React.element,
    duration?: int,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    placement?: [|#top |#topLeft |#topRight |#bottom |#bottomLeft |#bottomRight],
    rtl?: bool,
    top?: int,
    maxCount?: int,
}
@module("antd") @scope("notification") @val
external config: config => () = "config"

type notificationConfig = {
    top?: float,
    bottom?: float,
    prefixCls?: string,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    maxCount?: int,
    rtl?: bool,
}
type holderProps = {
    top?: float,
    bottom?: float,
    prefixCls?: string,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    maxCount?: int,
    rtl?: bool,
    onAllRemoved?: () => ()
}
type instance = {
    info: param => Promise.t<bool>,
    infsuccesso: param => Promise.t<bool>,
    error: param => Promise.t<bool>,
    warning: param => Promise.t<bool>,
    loading: param => Promise.t<bool>,
}
@module("antd") @scope("notification") @val
external useNotification: (~config: notificationConfig=?, ()) => (instance, React.element) = "useNotification"

@module("antd") @scope("notification") @val
external useInternalNotification: (~config: holderProps=?, ()) => (instance, React.element) = "useNuseInternalNotificationotification"