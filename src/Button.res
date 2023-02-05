type htmlButtonType = [
    | #submit
    | #reset
    | #button
]

type loading
type loadingConfig = {
    delay: float
}
external fromBool: bool => loading = "%identity"
external fromObj: loadingConfig => loading = "%identity"

type size = [
    | #large
    | #middle
    | #small
]

type buttonType = [
    #primary | #ghost | #dashed | #link | #text | #default
]

module ButtonProps = {
    type t = {
        block?: bool,
        danger?: bool,
        disabled?: bool,
        ghost?: bool,
        href?: string,
        htmlType?: htmlButtonType,
        icon?: React.element,
        loading?: loading,
        shape?: [
            | #default
            | #circle
            | #round
        ],
        size?: size,
        target?: string,
        \"type"?: buttonType,
        onClick?: ReactEvent.Mouse.t => ()
    }

    let new = (
        ~block: option<bool>=?,
        ~danger: option<bool>=?,
        ~disabled: option<bool>=?,
        ~ghost: option<bool>=?,
        ~href: option<string>=?,
        ~htmlType: option<htmlButtonType>=?,
        ~icon: option<React.element>=?,
        ~loading: option<loading>=?,
        ~shape: option<[
            | #default
            | #circle
            | #round
        ]>=?,
        ~size: option<[
            | #large
            | #middle
            | #small
        ]>=?,
        ~target: option<string>=?,
        ~\"type": option<[
            #primary | #ghost | #dashed | #link | #text | #default
        ]>=?,
        ~onClick: option<ReactEvent.Mouse.t => ()>=?,
        ()
    ): t => {
        block: ?block,
        danger: ?danger,
        disabled: ?disabled,
        ghost: ?ghost,
        href: ?href,
        htmlType: ?htmlType,
        icon: ?icon,
        loading: ?loading,
        shape: ?shape,
        size: ?size,
        target: ?target,
        \"type": ?\"type",
        onClick: ?onClick
    }
}

@react.component @module("antd")
external make: (
        ~block: bool=?,
        ~danger: bool=?,
        ~disabled: bool=?,
        ~ghost: bool=?,
        ~href: string=?,
        ~htmlType: htmlButtonType=?,
        ~icon: React.element=?,
        ~loading: loading=?,
        ~shape: [
            | #default
            | #circle
            | #round
        ]=?,
        ~size: [
            | #large
            | #middle
            | #small
        ]=?,
        ~target: string=?,
        ~\"type": [
            #primary | #ghost | #dashed | #link | #text | #default
        ]=?,
        ~onClick: ReactEvent.Mouse.t => ()=?,
        ~children: React.element,
) => React.element = "Button"