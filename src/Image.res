type placeholder
external fromTrue: bool => placeholder = "%identity"
external fromEl: React.element => placeholder = "%identity"

type previewConfig = {
    visible?: bool,
    onVisibleChange?: (bool, bool) => (),
    getContainer?: () => Webapi.Dom.HtmlElement.t,
    src?: string,
    mask?: React.element,
    maskClassName?: string,
    current?: int,
    countRender?: (int, int) => string,
    scaleStep?: int,
    forceRender?: bool,
}
type preview
external fromFalse: bool => preview = "%identity"
external fromConfig: previewConfig => preview = "%identity"

@react.component @module("antd")
external make: (
    ~alt: string=?,
    ~fallback: string=?,
    ~height: string=?,
    ~placeholder: placeholder=?,
    ~preview: preview=?,
    ~src: string=?,
    ~width: string=?,
    ~onError: ReactEvent.Synthetic.t => ()=?,
    ~rootClassName: string=?,
) => React.element = "Image"

module PreviewGroup = {
    type icons = {
        rotateLeft?: React.element,
        rotateRight?: React.element,
        zoomIn?: React.element,
        zoomOut?: React.element,
        close?: React.element,
        left?: React.element,
        right?: React.element,
    }

    @react.component @module("antd") @scope("Image")
    external make: (
        ~previewPrefixCls: string=?,
        ~icons: icons=?,
        ~preview: preview=?,
        ~children: React.element=?,
    ) => React.element = "PreviewGroup"
}