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
    type optionValue
    external fromBool: bool => optionValue = "%identity"
    external fromStr: string => optionValue = "%identity"
    external fromNumber: float => optionValue = "%identity"

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
        value: optionValue,
        style?: ReactDOM.style,
        disabled?: bool,
        onChange?: changeEvent<'v> => ()
    }

    type options
    external fromNumber: float => options = "%identity"
    external fromString: string => options = "%identity"
    external fromOptionType: optionType<'v> => options = "%identity"

    @react.component @module("antd") @scope("Checkbox")
    external make: (
        ~children: React.element=?,
        ~defaultValue: array<string>=?,
        ~disabled: bool=?,
        ~name: string=?,
        ~options: array<options>=?,
        ~className: string=?,
    ) => React.element = "Group"
}