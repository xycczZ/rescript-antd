@react.component @module("antd")
external make: (
    ~children: React.element,
    ~autoFocus: bool=?,
    ~checked: bool=?,
    ~defaultChecked: bool=?,
    ~disabled: bool=?,
    ~value: {..}
) => React.element = "Radio"

module Button = {
    @react.component @module("antd") @scope("Radio")
    external make: (
        ~children: React.element,
        ~autoFocus: bool=?,
        ~checked: bool=?,
        ~defaultChecked: bool=?,
        ~disabled: bool=?,
        ~value: {..}
    ) => React.element = "Button"
}

module Group = {
    type optionConfig = {
        label: React.element,
        value: string,
        disabled?: bool
    }
    type options
    external fromNumber: float => options = "%identity"
    external fromString: string => options = "%identity"
    external fromConfig: optionConfig => options = "%identity"

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
        ~children: React.element,
        ~value: {..},
        ~buttonStyle: ReactDOM.style=?,
        ~defaultValue: {..}=?,
        ~disabled: bool=?,
        ~name: string=?,
        ~options: array<options>=?,
        ~optionType: [#default |#button]=?,
        ~size: [#large |#middle |#small]=?,
        ~onChange: changeEvent => ()=?,
    ) => React.element = "Group"
}