type tooltip
external fromBool: bool => tooltip = "%identity"
external fromEl: React.element => tooltip = "%identity"

type copyConfig = {
    text?: string,
    onCopy?: option<ReactEvent.Synthetic.t> => (),
    icon?: React.element,
    tooltips?: tooltip,
    format?: [|#"text/plain" |#"text/html"]
}

type copyable
external fromBool: bool => copyable = "%identity"
external fromCopyConfig: copyConfig => copyable = "%identity"

type autoSizeType = {
    minRows?: int,
    maxRows?: int
}

type autoSize
external fromBool: bool => autoSize = "%identity"
external fromSizeType: autoSizeType => autoSize = "%identity"

type editConfig = {
    text?: string,
    editing?: bool,
    icon?: React.element,
    tooltip?: tooltip,
    onStart?: () => (),
    onChange?: string => (),
    onCancel?: () => (),
    onEnd?: () => (),
    maxLength?: int,
    autoSize?: autoSize,
    triggerType?: array<[|#icon |#text]>,
    enterIcon?: React.element,
}
type editable
external fromBool: bool => editable = "%identity"
external fromEditConfig: editConfig => editable = "%identity"

type overflowAdjust
external fromBool: bool => overflowAdjust = "%identity"
external fromNumber: float => overflowAdjust = "%identity"
type overflow = {
    adjustX?: overflowAdjust,
    adjustY?: overflowAdjust,
}

type alignType = {
    points?: array<string>,
    offset?: array<int>,
    targetOffset?: array<int>,
    overflow?: overflow,
    useCssRight?: bool,
    useCssBottom?: bool,
    useCssTransform?: bool,
    ignoreShake?: bool,
}

type destroyTooltipOnHideConfig = {
    keepParent?: bool
}
type destroyTooltipOnHide
external fromBool: bool => destroyTooltipOnHide = "%identity"
external fromConfig: destroyTooltipOnHideConfig => destroyTooltipOnHide = "%identity"

type tooltipPropConfig = {
    title: () => React.element,
    align: alignType,
    arrowPointAtCenter: bool,
    autoAdjustOverflow: bool,
    color: string,
    defaultOpen: bool,
    destroyTooltipOnHide: destroyTooltipOnHide,
    getPopupContainer: Webapi.Dom.HtmlElement.t => Webapi.Dom.HtmlElement.t,
    mouseEnterDelay: float,
    mouseLeaveDelay: float,
    overlayClassName: string,
    overlayStyle: ReactDOM.style,
    overlayInnerStyle: ReactDOM.style,
    placement: [#top | #bottom |#left |#right |#topLeft |#topRight 
        |#bottomLeft |#bottomRight |#leftTop |#leftBottom |#rightTop |#rightBottom],
    trigger: array<[#hover |#focus |#click |#contextMenu]>,
    \"open": bool,
    zIndex: int,
    onOpenChange: bool => (),
}
type tooltipProps
external fromBool: bool => tooltipProps = "%identity"
external fromEl: React.element => tooltipProps = "%identity"
external fromTooltipPropConfig: tooltipPropConfig => tooltipProps = "%identity"

type ellipsisConfig = {
    rows?: int,
    expandable?: bool,
    suffix?: string,
    symbol?: React.element,
    onExpand?: ReactEvent.Mouse.t => (),
    onEllipsis?: bool => (),
    tooltop?: tooltipProps
}
type ellipsis
external fromBool: bool => ellipsis = "%identity"

module Text = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: copyable=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: editable=?,
        ~ellipsis: ellipsis=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Text"
}

module Title = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: copyable=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: editable=?,
        ~ellipsis: ellipsis=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~level: @int[#1 |#2 |#3 |#4 |#5]=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Title"
}

module Paragraph = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: copyable=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: editable=?,
        ~ellipsis: ellipsis=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Paragraph"
}

module Link = {
    @react.component @module("antd") @scope("Typography")
    external make: (
        ~className: string=?,
        ~children: React.element=?,
        ~code: bool=?,
        ~copyable: copyable=?,
        ~delete: bool=?,
        ~disabled: bool=?,
        ~editable: editable=?,
        ~ellipsis: bool=?,
        ~keyboard: bool=?,
        ~mark: bool=?,
        ~onClick: ReactEvent.Synthetic.t => ()=?,
        ~strong: bool=?,
        ~italic: bool=?,
        ~\"type": [#secondary |#success |#warning |#danger]=?,
        ~underline: bool=?,
    ) => React.element = "Link"
}