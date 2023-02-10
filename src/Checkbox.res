type t<'a> = {
    autoFocus?: bool,
    checked?: bool,
    defaultChecked?: bool,
    disabled?: bool,
    indeterminate?: bool,
    onChange?: 'a => (),
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~autoFocus: bool=?,
    ~checked: bool=?,
    ~defaultChecked: bool=?,
    ~disabled: bool=?,
    ~indeterminate: bool=?,
    ~onChange: {..} => ()=?,
    ~className: string=?,
) => React.element = "Checkbox"

module Group = {
    module OptionValue = {
        type t
        external fromBool: bool => t = "%identity"
        external fromStr: string => t = "%identity"
        external fromNumber: float => t = "%identity"
    }

    type rec checkboxProps<'a, 'v> = {
        prefixCls?: string,
        className?: string,
        defaultChecked?: bool,
        checked?: bool,
        style?: ReactDOM.style,
        disabled?: bool,
        onChange?: 'a => (),
        onClick?: ReactEvent.Mouse.t => (),
        onMouseEnter?: ReactEvent.Mouse.t => (),
        onMouseLeave?: ReactEvent.Mouse.t => (),
        onKeyPress?: ReactEvent.Keyboard.t => (),
        onKeyDown?: ReactEvent.Keyboard.t => (),
        value?: 'v,
        tabIndex?: int,
        name?: string,
        children?: React.element,
        id?: string,
        autoFocus?: bool,
        \"type"?: string,
        skipGroup?: bool,
        indeterminate?: bool,
    } and changeEvent<'v> = {
        target: checkboxProps<changeEvent<'v>, 'v>,
        stopPropagation: () => (),
        preventDefault: () => (),
        nativeEvent: ReactEvent.Mouse.t,
    }

    type optionType<'v> = {
        label: React.element,
        value: OptionValue.t,
        style?: ReactDOM.style,
        disabled?: bool,
        onChange?: changeEvent<'v> => ()
    }

    module Options = {
        type t
        external fromNumber: float => t = "%identity"
        external fromString: string => t = "%identity"
        external fromOptionType: optionType<'v> => t = "%identity"
    }

    @react.component @module("antd") @scope("Checkbox")
    external make: (
        ~children: React.element=?,
        ~defaultValue: array<string>=?,
        ~disabled: bool=?,
        ~name: string=?,
        ~options: array<Options.t>=?,
        ~className: string=?,
    ) => React.element = "Group"
}