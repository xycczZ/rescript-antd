type container
external fromStr: string => container = "%identity"
external fromFalse: bool => container = "%identity"
external fromEl: React.element => container = "%identity"
external fromElFn: (() => React.element) => container = "%identity"

type pushConfig = {
    distance: string
}
type push
external fromBool: bool => push = "%identity"
external fromObj: pushConfig => push = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~prefixCls: string=?,
    ~\"open": bool=?,
    ~autoFocus: bool=?,
    ~afterOpenChange: ReactEvent.Synthetic.t => ()=?,
    ~destroyOnClose: bool=?,
    ~getContainer: container=?,
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
    ~push: push=?,
    ~rootClassName: string=?,
    ~rootStyle: ReactDOM.style=?,
    ~size: [#default |#large]=?,
    ~style: ReactDOM.style=?,
    ~title: React.element=?,
    ~width: string=?,
    ~zIndex: int=?,
    ~onClose: ReactEvent.Synthetic.t => ()=?,
) => React.element = "Drawer"