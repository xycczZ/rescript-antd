@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element,
    ~autoFocus: bool=?,
    ~checked: bool=?,
    ~defaultChecked: bool=?,
    ~disabled: bool=?,
    ~value: 'a
) => React.element = "Radio"

module Button = {
    @react.component @module("antd") @scope("Radio")
    external make: (
        ~className: string=?,
        ~children: React.element,
        ~autoFocus: bool=?,
        ~checked: bool=?,
        ~defaultChecked: bool=?,
        ~disabled: bool=?,
        ~value: 'a
    ) => React.element = "Button"
}

module Group = {
    type optionConfig = {
        label: React.element,
        value: string,
        disabled?: bool
    }

    module Options = {
        type t
        external fromNumber: float => t = "%identity"
        external fromString: string => t = "%identity"
        external fromConfig: optionConfig => t = "%identity"
    }

    type rec target = {
        checked: bool,
        prefixCls?: string,
        className?: string,
        defaultChecked?: bool,
        style?: ReactDOM.style,
        disabled?: bool,
        onChange?: changeEvent => (),
        onClick?: ReactEvent.Mouse.t => (),
        onMouseEnter?: ReactEvent.Mouse.t => (),
        onMouseLeave?: ReactEvent.Mouse.t => (),
        onKeyPress?: ReactEvent.Keyboard.t => (),
        onKeyDown?: ReactEvent.Keyboard.t => (),
        value?: string,
        tabIndex?: int,
        name?: string,
        children?: React.element,
        id?: string,
        autoFocus?: bool,
        \"type": string,
        skipGroup?: bool,
    } and changeEvent = {
        target: target,
        stopPropagation: () => (),
        preventDefault: () => (),
        nativeEvent: ReactEvent.Mouse.t,
    }

    @react.component @module("antd") @scope("Radio")
    external make: (
        ~className: string=?,
        ~children: React.element,
        ~value: 'a,
        ~buttonStyle: ReactDOM.style=?,
        ~defaultValue: 'a=?,
        ~disabled: bool=?,
        ~name: string=?,
        ~options: array<Options.t>=?,
        ~optionType: [#default |#button]=?,
        ~size: [#large |#middle |#small]=?,
        ~onChange: changeEvent => ()=?,
    ) => React.element = "Group"
}