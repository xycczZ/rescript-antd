type size
external fromNumber: float => size = "%identity"
external fromInvariant: [|#large |#small |#default] => size = "%identity"

type avatarProps = {
    active?: bool,
    shape?: [|#circle |#square],
    size?: size
}
type avatar
external fromBool: bool => avatar = "%identity"
external fromProp: avatarProps => avatar = "%identity"

type paragraphProps = {
    rows?: int,
    width?: array<string>
}
type paragraph
external fromBool: bool => paragraph = "%identity"
external fromProp: paragraphProps => paragraph = "%identity"

type titleProps = {
    width?: string,
}
type title
external fromBool: bool => title = "%identity"
external fromProp: titleProps => title = "%identity"

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~active: bool=?,
    ~avatar: avatar=?,
    ~loading: bool=?,
    ~paragraph: paragraph=?,
    ~round: bool=?,
    ~title: title=?
) => React.element = "Skeleton"

type element = {
    prefixCls?: string,
    className?: string,
    style?: ReactDOM.style,
    size?: size,
    shape?: [#circle | #square | #round | #default],
    active?: bool,
}

module Button = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
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
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: size=?,
        ~shape: [#circle | #square]=?,
        ~active: bool=?,
    ) => React.element = "Avatar"
}

module Input = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
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
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: size=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
    ) => React.element = "Avatar"
}

module Node = {
    @react.component @module("antd") @scope("Skeleton")
    external make: (
        ~prefixCls: string=?,
        ~className: string=?,
        ~style: ReactDOM.style=?,
        ~size: size=?,
        ~shape: [#circle | #square | #round | #default]=?,
        ~active: bool=?,
        ~fullSize: bool=?,
        ~children: React.element=?,
    ) => React.element = "Node"
}