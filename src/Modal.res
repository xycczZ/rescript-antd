type container
external fromHtmlEl: Webapi.Dom.HtmlElement.t => container = "%identity"
external fromHtmlElFn: (() => Webapi.Dom.HtmlElement.t) => container = "%identity"
external fromBool: bool => container = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~afterClose: () => () = ?,
    ~bodyStyle: ReactDOM.style = ?,
    ~cancelButtonProps: Button.ButtonProps.t = ?,
    ~cancelText: string=?, // 取消
    ~centered: bool=?,// false
    ~closable: bool=?, // true
    ~closeIcon: React.element=?, // <CloseOutlined />
    ~confirmLoading: bool=?, // false
    ~destroyOnClose: bool=?, // false
    ~focusTriggerAfterClose: bool=?, // true,
    ~footer:Js.null<React.element>=?, // 默认是两个确定取消按钮,传null不显示这俩按钮
    ~forceRender: bool=?, // false
    ~getContainer: container=?, // document.body
    ~keyboard: bool=?, // true
    ~mask: bool=?, // true
    ~maskClosable: bool=?, // true
    ~maskStyle: ReactDOM.style=?, // cssproperties
    ~modalRender: React.element => React.element=?,
    ~okButtonProps: Button.ButtonProps.t=?,
    ~okText: React.element=?,
    ~okType: string=?,
    ~style: ReactDOM.style=?,
    ~title: React.element=?,
    ~\"open": bool=?,
    ~width: int=?, // 520
    ~wrapClassName: string=?,
    ~zIndex: int=?, // 1000,
    ~onCancel: ReactEvent.Synthetic.t => () = ?,
    ~onOk: ReactEvent.Synthetic.t => () = ?,
) => React.element = "Modal"

type props<'a> = {
    prefixCls?: string,
    className?: string,
    \"open"?: bool,
    visible?: bool,
    title?: React.element,
    closable?: bool,
    content?: React.element,
    onOk?: array<'a> => 'a,
    onCancel?: array<'a> => 'a,
    afterClose?: () => (),
    okButtonProps?: Button.ButtonProps.t,
    cancelButtonProps?: Button.ButtonProps.t,
    centered?: bool,
    width?: string,
    okText?: React.element,
    okType?: Button.buttonType,
    cancelText?: React.element,
    icon?: React.element,
    mask?: bool,
    maskClosable?: bool,
    zIndex?: int,
    okCancel?: bool,
    style?: ReactDOM.style,
    wrapClassName?: string,
    maskStyle?: ReactDOM.style,
    \"type"?: [|#info |#success |#error |#warn |#warning |#confirm],
    keyboard?: bool,
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    autoFocusButton?: [#ok |#cancel],
    transitionName?: string,
    maskTransitionName?: string,
    direction?: [#ltr | #rtl],
    bodyStyle?: ReactDOM.style,
    closeIcon?: React.element,
    footer?: React.element,
    modalRender?: React.element => React.element,
    focusTriggerAfterClose?: bool,
}

type modalFunc<'a> = {
    destroy: () => (),
    update: (props<'a> => props<'a>) => ()
}

@module("antd") @scope("Modal") @val
external info: props<{..}> => modalFunc<{..}> = "info"

@module("antd") @scope("Modal") @val
external success: props<{..}> => modalFunc<{..}> = "success"

@module("antd") @scope("Modal") @val
external error: props<{..}> => modalFunc<{..}> = "error"

@module("antd") @scope("Modal") @val
external warning: props<{..}> => modalFunc<{..}> = "warning"

@module("antd") @scope("Modal") @val
external confirm: props<{..}> => modalFunc<{..}> = "confirm"

@module("antd") @scope("Modal") @val
external destroyAll: () => () = "destroyAll"

type instance<'a> = {
    info: props<'a> => modalFunc<'a>,
    infsuccesso: props<'a> => modalFunc<'a>,
    error: props<'a> => modalFunc<'a>,
    warning: props<'a> => modalFunc<'a>,
    loading: props<'a> => modalFunc<'a>,
}
@module("antd") @scope("Modal") @val
external useModal: () => (instance<{..}>, React.element) = "useModal"