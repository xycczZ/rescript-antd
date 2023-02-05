@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~className: string=?,
    ~dashed: bool=?,
    ~orientation: [|#left |#right |#center]=?,
    ~orientationMargin: string=?,
    ~plain: bool=?,
    ~style: ReactDOM.style=?,
    ~\"type": [#horizontal |#vertical]=?
) => React.element = "Divider"