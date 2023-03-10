type t = {
    delay?: int,
    indicator?: React.element,
    size?: [#small |#default |#large],
    spinning?: bool,
    tip?: React.element,
    wrapperClassName?: string,
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element=?,
    ~delay: int=?,
    ~indicator: React.element=?,
    ~size: [#small |#default |#large]=?,
    ~spinning: bool=?,
    ~tip: React.element=?,
    ~wrapperClassName: string=?,
) => React.element = "Spin"

@module("antd") @scope("Spin") @val
external setDefaultIndicator: React.element => () = "setDefaultIndicator"