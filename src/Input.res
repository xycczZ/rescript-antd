module AllowClear = {
    type t
    type clearIcon = {
        clearIcon: React.element
    }

    external fromBool: bool => t = "%identity"
    external fromObj: clearIcon => t = "%identity"
}

module ShowCount = {
    type t
    type formatterInfo = {
        value?: string,
        count?: int,
        maxLength?: int
    }

    type showCount = {
        formatter: formatterInfo => React.element
    }

    external fromBool: bool => t = "%identity"
    external fromFormatter: showCount => t = "%identity"
}

@react.component @module("antd")
external make: (
    ~addonAfter: React.element=?,
    ~addonBefore: React.element=?,
    ~allowClear: AllowClear.t=?,
    ~bordered: bool=?,
    ~defaultValue: string=?,
    ~disabled: bool=?,
    ~id: string=?,
    ~maxLength: int=?,
    ~showCount: ShowCount.t = ?,
    ~status: [|#error |#warning]=?,
    ~prefix: React.element=?,
    ~size: [|#large |#middle |#small]=?,
    ~suffix: React.element=?,
    ~\"type": string=?,
    ~value: string=?,
    ~onChange: ReactEvent.Synthetic.t => ()=?,
    ~onPressEnter: ReactEvent.Synthetic.t => () = ?,
) => React.element = "Input"

module TextArea = {
  module AutoSize = {
    type t
    external fromBool: bool => t = "%identity"
    external fromObj: {..} => t = "%identity"
  }

  @react.component @module("antd") @scope("Input")
  external make: (
    ~allowClear: bool=?,
    ~autoSize: AutoSize.t = ?,
    ~bordered: bool=?,
    ~defaultValue: string = ?,
    ~maxLength: int=?,
    ~showCount: ShowCount.t=?,
    ~value: string=?,
    ~onPressEnter: ReactEvent.Synthetic.t => () = ?,
    ~onPressEnter: ReactEvent.Synthetic.t => () = ?,
  ) => React.element = "TextArea"
}

module Search = {
    module EnterButton = {
        type t
        external fromBool: bool => t = "%identity"
        external fromReact: React.element => t = "%identity"
    }

    @react.component @module("antd") @scope("Input")
    external make: (
        ~enterButton: EnterButton.t=?,
        ~loading: bool=?,
        ~onSearch: (string, ReactEvent.Synthetic.t) => (),
    ) => React.element = "Search"
}

module Group = {
    @react.component @module("antd") @scope("Input")
    external make: (
        ~children: React.element=?,
        ~compact: bool=?,
        ~size: [
            | #large
            | #default
            | #small
        ] = ?,
    ) => React.element = "Group"
}

module Password = {
    module VisibilityToggle = {
        type t
        type toggle = {
            visible: bool,
            onVisibleChange: bool
        }
        external fromBool: bool => t = "%identity"
        external fromToggle: toggle => t = "%identity"
    }

    @react.component @module("antd") @scope("Input")
    external make: (
        ~iconRender: bool => React.element = ?,
        ~visibilityToggle: VisibilityToggle.t = ?,
    ) => React.element = "Password"
}