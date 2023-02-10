module Size = {
    type t
    external fromNumber: float => t = "%identity"
    external fromVariant: [|#large |#small |#default] => t = "%identity"
}

type avatarProps = {
    active?: bool,
    shape?: [|#circle |#square],
    size?: Size.t
}

module AvatarType = {
    type t
    external fromBool: bool => t = "%identity"
    external fromProp: avatarProps => t = "%identity"
}

type paragraphProps = {
    rows?: int,
    width?: array<string>
}

module Paragraph = {
    type t
    external fromBool: bool => t = "%identity"
    external fromProp: paragraphProps => t = "%identity"
}

type titleProps = {
    width?: string,
}

module Title = {
    type t
    external fromBool: bool => t = "%identity"
    external fromProp: titleProps => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~active: bool=?,
    ~avatar: AvatarType.t=?,
    ~loading: bool=?,
    ~paragraph: Paragraph.t=?,
    ~round: bool=?,
    ~title: Title.t=?
) => React.element = "Skeleton"

type element = {
    prefixCls?: string,
    className?: string,
    style?: ReactDOM.style,
    size?: Size.t,
    shape?: [#circle | #square | #round | #default],
    active?: bool,
}

module Button = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~className: string=?,
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: [|#large |#small |#default]=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
        ~block: bool=?
    ) => React.element = "Button"
}

module Avatar = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~className: string=?,
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: Size.t=?,
        ~shape: [#circle | #square]=?,
        ~active: bool=?,
    ) => React.element = "Avatar"
}

module Input = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~className: string=?,
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: [|#large |#small |#default]=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
        ~block: bool=?
    ) => React.element = "Input"
}

module Image = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~className: string=?,
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: Size.t=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
    ) => React.element = "Avatar"
}

module Node = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~className: string=?,
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: Size.t=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
        ~fullSize: bool=?,
        ~children: React.element=?,
    ) => React.element = "Node"
}