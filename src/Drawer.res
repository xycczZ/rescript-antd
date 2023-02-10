module Container = {
    type t
    external fromStr: string => t = "%identity"
    external fromFalse: bool => t = "%identity"
    external fromEl: React.element => t = "%identity"
    external fromElFn: (() => React.element) => t = "%identity"
}

type pushConfig = {
    distance: string
}
module Push = {
    type t
    external fromBool: bool => t = "%identity"
    external fromObj: pushConfig => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~prefixCls: string=?,
    ~\"open": bool=?,
    ~autoFocus: bool=?,
    ~afterOpenChange: ReactEvent.Synthetic.t => ()=?,
    ~destroyOnClose: bool=?,
    ~getContainer: Container.t=?,
    ~bodyStyle: ReactDOM.style=?,
    ~className: string=?,
    ~closable: bool=?,
    ~closeIcon: React.element=?,
    ~contentWrapperStyle: ReactDOM.style=?,
    ~extra: React.element=?,
    ~footer: React.element=?,
    ~footerStyle: ReactDOM.style=?,
    ~forceRender: bool=?,
    ~headerStyle: ReactDOM.style=?,
    ~height: string=?,
    ~keyboard: bool=?,
    ~mask: bool=?,
    ~maskClosable: bool=?,
    ~maskStyle: ReactDOM.style=?,
    ~placement: [#top |#right |#bottom |#left]=?,
    ~push: Push.t=?,
    ~rootClassName: string=?,
    ~rootStyle: ReactDOM.style=?,
    ~size: [#default |#large]=?,
    ~style: ReactDOM.style=?,
    ~title: React.element=?,
    ~width: string=?,
    ~zIndex: int=?,
    ~onClose: ReactEvent.Synthetic.t => ()=?,
    ~className: string=?,
) => React.element = "Drawer"