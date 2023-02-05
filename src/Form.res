module NamePath = {
    type t
    external fromStr: string => t = "%identity"
    external fromNumber: int => t = "%identity"
    external fromArr: array<string> => t = "%identity"
}

type fieldData<'a> = {
    errors?: array<string>,
    name?: array<NamePath.t>,
    touched?: bool,
    validating?: bool,
    value?: 'a
}

type filterFuncParam = {
    touched?: bool,
    validating?: bool,
    errors?: array<string>,
    warnings?: array<string>,
    name?: array<string>
}

type scrollLogicalPosition = [
    | #start
    | #center
    | #end
    | #nearest
]

type boundary
external fromEl: Webapi.Dom.Element.t => boundary = "%identity"
external fromElFn: (Webapi.Dom.Element.t => bool) => boundary = "%identity"

type scrollAction = {
    el: Webapi.Dom.Element.t,
    top: float,
    left: float,
}
type behavior
external fromInvariant: [| #always| #"if-needed"] => behavior = "%identity"
external fromFn: (array<scrollAction> => 'a) => behavior = "%identity"

type scrollOptions = {
    behavior?: behavior,
    block?: scrollLogicalPosition,
    inline?: scrollLogicalPosition,
    scrollMode?: [
        | #always
        | #"if-needed"
    ],
    boundary?: boundary,
    skipOverflowHiddenElements?: bool
}

type fieldError = {
    internalNamePath: array<string>,
    errors: array<string>,
    warnings: array<string>,
}

type formInstance<'a> = {
    getFieldInstance?: NamePath.t => 'a,
    scrollToField?: (NamePath.t, option<scrollOptions>) => (),

    getFieldError?: NamePath.t => array<string>,
    getFieldWarning?: NamePath.t => array<string>,
    getFieldsError?: array<NamePath.t> => array<fieldError>,
    getFieldsValue?: (option<array<NamePath.t>>, option<filterFuncParam => bool>) => 'a,
    getFieldValue?: NamePath.t => 'a,
    isFieldsTouched?: (option<array<NamePath.t>>, option<bool>) => bool,
    isFieldTouched?: NamePath.t => bool,
    isFieldValidating?: NamePath.t => bool,
    isFieldsValidating?: array<NamePath.t> => bool,
    resetFields?: option<array<NamePath.t>> => (),
    setFields?: array<fieldData<'a>> => (),
    setFieldValue?: (NamePath.t, 'a) => (),
    setFieldsValue?: 'a => (),
    submit?: () => (),
    validateFields?: option<array<NamePath.t>> => Promise.t<'a>
}

module ValidateMessage = {
    type dateValidateMessage = {
        format?: string,
        parse?: string,
        invalid?: string
    }

    type typesValidateMessage = {
        string?: string,
        method?: string,
        array?: string,
        object?: string,
        number?: string,
        date?: string,
        boolean?: string,
        integer?: string,
        float?: string,
        regexp?: string,
        email?: string,
        url?: string,
        hex?: string
    }

    type rangeValidateMessage = {
        len?: string,
        min?: string,
        max?: string,
        range?: string
    }

    type stringValidateMessage =  rangeValidateMessage

    type numberValidateMessage = rangeValidateMessage

    type arrayValidateMessage = rangeValidateMessage

    type patternValidateMessage = {
        mismatch?: string
    }

    type t = {
        default?: string,
        required?: string,
        enum?: string,
        whitespace?: string,
        date?: dateValidateMessage,
        types?: typesValidateMessage,
        string?: stringValidateMessage,
        number?: numberValidateMessage,
        array?: arrayValidateMessage,
        pattern?: patternValidateMessage
    }
}

type scrollFirstErrorOption
external fromFalse: bool => scrollFirstErrorOption = "%identity"
external fromScrollOptions: scrollOptions => scrollFirstErrorOption = "%identity"

type componentOption
external fromFalse: bool => componentOption = "%identity"
external fromStr: string => componentOption = "%identity"
external fromComponent: React.element => componentOption = "%identity"

type requiredMark
type requiredMarkOption = @string[|#optional]
external fromTrue: bool => requiredMark = "%identity"
external fromInvariant: requiredMarkOption => requiredMark = "%identity"

type errorField = {
    name: array<string>,
    errors: array<string>
}
type validateErrorEntity<'a> = {
    values: 'a,
    errorFields: array<errorField>,
    outOfDate: bool
}

@react.component @module("antd")
external make: (
    ~children: React.element=?,
    ~colon: bool=?, // true
    ~disabled: bool=?, // false,
    ~component: componentOption=?,
    ~fields: array<fieldData<{..}>>=?,
    ~form: formInstance<{..}>=?,
    ~initialValues: {..}=?,
    ~labelAlign: [
        |#left
        |#right
    ]=?,
    ~labelWrap: bool=?,
    ~labelCol: {..}=?,
    ~layout: [
        | #horizontal
        | #vertical
        | #inline
    ]=?,
    ~name: string=?,
    ~preserve: bool=?,
    ~requiredMark: requiredMark=?,
    ~scrollToFirstError: scrollFirstErrorOption=?,
    ~size: [
        | #small
        | #middle
        | #large
    ]=?,
    ~validateMessages: ValidateMessage.t=?,
    ~validateTrigger: array<string>=?,
    ~wrapperCol: {..}=?,
    ~onFieldsChange: (array<fieldData<{..}>>, array<fieldData<{..}>>) => ()=?, // changedFields => allFields => ()
    ~onFinish: {..} => ()=?, // values => ()
    // {values, errorFields, outOfDate} => ()
    ~onFinishFailed: validateErrorEntity<{..}> => ()=?,
    ~onValuesChange: ({..}, {..}) => ()=?, // changedValues => allValues => ()
) => React.element = "Form"

type types = [
    | #string
    | #method
    | #array
    | #object
    | #number
    | #date
    | #boolean
    | #integer
    | #float
    | #regexp
    | #email
    | #url
    | #hex
]

type rule
type ruleConfig<'a> = {
    defaultField?: rule,
    enum?: array<'a>,
    fields?: Js.Dict.t<rule>,
    len?: int,
    max?: int,
    message?: string,
    min?: int,
    pattern?: Js.Re.t,
    required?: bool,
    transform?: 'a => 'a,
    \"type"?: types,
    validateTrigger?: array<string>,
    validator?: (rule, 'a) => Promise.t<bool>,
    warningOnly?: bool,
    whitespace?: bool
}
external fromRuleConfig: ruleConfig<'a> => rule = "%identity"
external fromFunc: (formInstance<'a> => ruleConfig<'a>) => rule = "%identity"

type validateStatuses = [
    | #success
    | #warning
    | #error
    | #validating
    | #""
]

module Item = {
    type shouldUpdateOption
    external fromBool: bool => shouldUpdateOption = "%identity"
    external fromFunc: (('a, 'a) => bool) => shouldUpdateOption = "%identity"

    type validateFirstOption
    type validateFirstOptionInvariant = @string[|#parallel]
    external fromFalse: bool => validateFirstOption = "%identity"
    external fromInvariant: validateFirstOptionInvariant => validateFirstOption = "%identity"

    @react.component @module("antd") @scope("Form")
    external make: (
        ~children: React.element=?,
        ~colon: bool=?,
        ~dependencies: array<NamePath.t>=?,
        ~extra: React.element=?,
        ~getValueFromEvent: array<{..}> => {..}=?,
        ~getValueProps: {..} => {..}=?,
        ~hasFeedback: bool = ?,
        ~help: React.element=?,
        ~hidden: bool=?,
        ~htmlFor: string=?,
        ~initialValue: string=?,
        ~label: React.element=?,
        ~labelAlign: [
            | #left
            | #right
        ]=?,
        ~labelCol: {..}=?,
        ~messageVariables: Js.Dict.t<string> = ?,
        ~name: NamePath.t=?,
        ~normalize: ({..}, {..}, Js.Dict.t<{..}>) => {..}=?,
        ~noStyle: bool=?,
        ~preserve: bool=?,
        ~required: bool=?,
        ~rules: array<rule>=?,
        ~shouldUpdate: shouldUpdateOption=?,
        ~tooltip: React.element=?,
        ~trigger: string=?,
        ~validateFirst: validateFirstOption=?,
        ~validateStatus: validateStatuses=?,
        ~validateTrigger: array<string>=?,
        ~valuePropName: string=?,
        ~wrapperCol: {..}=?,
    ) => React.element = "Item"
}

module List = {
    type formListFieldData = {
        name: int,
        key: int,
        fieldKey?: int
    }

    type formListOperation<'a> = {
        add: (option<'a>, int) => (),
        remove: array<int> => (),
        move: (int, int) => ()
    }

    type meta = {
        errors: array<React.element>,
        warnings: array<React.element>,
    }

    type validatorRule = {
        warningOnly?: bool,
        message?: React.element,
    }

    @react.component @module("antd") @scope("Form")
    external make: (
        ~children: (array<formListFieldData>, formListOperation<{..}>, meta) => React.element,
        ~prefixCls: string=?,
        ~name: NamePath.t,
        ~rules: array<rule>=?,
        ~initialValue: array<{..}>=?,
    ) => React.element = "List"
}

module ErrorList = {
    @react.component @module("antd") @scope("Form")
    external make: (
        ~fieldId: string=?,
        ~help: React.element=?,
        ~helpStatus: validateStatuses=?,
        ~errors: array<React.element>=?,
        ~warnings: array<React.element>=?,
        ~className: string=?,
        ~onVisibleChanged: bool => ()=?,
    ) => React.element = "ErrorList"
}

module Provider = {
    type formChangeInfo<'a> = {
        changeFields: array<fieldData<'a>>,
        forms: Js.Dict.t<formInstance<'a>>,
    }

    type formFinishInfo<'a> = {
        values: 'a,
        forms: Js.Dict.t<formInstance<'a>>,
    }

    @react.component @module("antd") @scope("Form")
    external make: (
        ~validateMessages: ValidateMessage.t=?,
        ~onFormChange: (string, formChangeInfo<{..}>) => ()=?,
        ~onFormFinish: (string, formFinishInfo<{..}>) => ()=?,
        ~children: React.element=?,
    ) => React.element = "Provider"
}