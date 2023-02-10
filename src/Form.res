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

module Boundary = {
    type t
    external fromEl: Webapi.Dom.Element.t => t = "%identity"
    external fromElFn: (Webapi.Dom.Element.t => bool) => t = "%identity"
}

type scrollAction = {
    el: Webapi.Dom.Element.t,
    top: float,
    left: float,
}
module Behavior = {
    type t
    external fromVariant: [| #always| #"if-needed"] => t = "%identity"
    external fromFn: (array<scrollAction> => 'a) => t = "%identity"
}

type scrollOptions = {
    behavior?: Behavior.t,
    block?: scrollLogicalPosition,
    inline?: scrollLogicalPosition,
    scrollMode?: [
        | #always
        | #"if-needed"
    ],
    boundary?: Boundary.t,
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

module ScrollFirstErrorOption = {
    type t
    external fromFalse: bool => t = "%identity"
    external fromScrollOptions: scrollOptions => t = "%identity"
}

module ComponentOption = {
    type t
    external fromFalse: bool => t = "%identity"
    external fromStr: string => t = "%identity"
    external fromComponent: React.element => t = "%identity"
}

type requiredMarkOption = @string[|#optional]
module RequiredMark = {
    type t
    external fromTrue: bool => t = "%identity"
    external fromVariant: requiredMarkOption => t = "%identity"
}

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
    ~className: string=?,
    ~children: React.element=?,
    ~colon: bool=?, // true
    ~disabled: bool=?, // false,
    ~component: ComponentOption.t=?,
    ~fields: array<fieldData<{..}>>=?,
    ~form: formInstance<{..}>=?,
    ~initialValues: 'a=?,
    ~labelAlign: [
        |#left
        |#right
    ]=?,
    ~labelWrap: bool=?,
    ~labelCol: Col.t=?,
    ~layout: [
        | #horizontal
        | #vertical
        | #inline
    ]=?,
    ~name: string=?,
    ~preserve: bool=?,
    ~requiredMark: RequiredMark.t=?,
    ~scrollToFirstError: ScrollFirstErrorOption.t=?,
    ~size: [
        | #small
        | #middle
        | #large
    ]=?,
    ~validateMessages: ValidateMessage.t=?,
    ~validateTrigger: array<string>=?,
    ~wrapperCol: Col.t=?,
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


module Rule = {
    type t
    type ruleConfig<'a> = {
    defaultField?: t,
    enum?: array<'a>,
    fields?: Js.Dict.t<t>,
    len?: int,
    max?: int,
    message?: string,
    min?: int,
    pattern?: Js.Re.t,
    required?: bool,
    transform?: 'a => 'a,
    \"type"?: types,
    validateTrigger?: array<string>,
    validator?: (t, 'a) => Promise.t<bool>,
    warningOnly?: bool,
    whitespace?: bool
}
    external fromRuleConfig: ruleConfig<'a> => t = "%identity"
    external fromFunc: (formInstance<'a> => ruleConfig<'a>) => t = "%identity"
}

type validateStatuses = [
    | #success
    | #warning
    | #error
    | #validating
    | #""
]

module Item = {
    module ShouldUpdateOption = {
        type t
        external fromBool: bool => t = "%identity"
        external fromFunc: (('a, 'a) => bool) => t = "%identity"
    }

    module ValidateFirstOption = {
        type t
        type validateFirstOptionInvariant = @string[|#parallel]
        external fromFalse: bool => t = "%identity"
        external fromVariant: validateFirstOptionInvariant => t = "%identity"
    }

    @react.component @module("antd") @scope("Form")
    external make: (
        ~className: string=?,
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
        ~labelCol: Col.t=?,
        ~messageVariables: Js.Dict.t<string> = ?,
        ~name: NamePath.t=?,
        ~normalize: ({..}, {..}, Js.Dict.t<{..}>) => {..}=?,
        ~noStyle: bool=?,
        ~preserve: bool=?,
        ~required: bool=?,
        ~rules: array<Rule.t>=?,
        ~shouldUpdate: ShouldUpdateOption.t=?,
        ~tooltip: React.element=?,
        ~trigger: string=?,
        ~validateFirst: ValidateFirstOption.t=?,
        ~validateStatus: validateStatuses=?,
        ~validateTrigger: array<string>=?,
        ~valuePropName: string=?,
        ~wrapperCol: Col.t=?,
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
        ~rules: array<Rule.t>=?,
        ~initialValue: array<'a>=?,
        ~className: string=?,
    ) => React.element = "List"
}

module ErrorList = {
    @react.component @module("antd") @scope("Form")
    external make: (
        ~className: string=?,
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
        ~className: string=?,
        ~validateMessages: ValidateMessage.t=?,
        ~onFormChange: (string, formChangeInfo<{..}>) => ()=?,
        ~onFormFinish: (string, formFinishInfo<{..}>) => ()=?,
        ~children: React.element=?,
    ) => React.element = "Provider"
}