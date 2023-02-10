type file = {
    lastModifiedDate: Js.Date.t,
    uid: string,
    lastModified: int,
    name: string,
    webkitRelativePath: string,
    size: int,
    \"type": string,
}
external toJsFile: file => Webapi.File.t = "%identity"

module Action = {
    type t
    external fromStr: string => t = "%identity"
    external fromFn: (file => string) => t = "%identity"
    external fromAsync: (file => Promise.t<string>) => t = "%identity"
}

module BeforeUploadResult = {
    type t
    external fromBool: bool => t = "%identity"
    external fromPromise: Promise.t<file> => t = "%identity"
}

type uploadProgressEvent = {
    percent?: int,
}

type uploadFile<'a, 'i> = {
    uid: string,
    size?: int,
    name: string,
    fileName?: string,
    lastModified?: int,
    lastModifiedDate?: Js.Date.t,
    url?: string,
    status?: [#error | #success | #done | #uploading | #removed],
    percent?: int,
    thumbUrl?: string,
    crossOrigin?: [#anonymous | #"use-credentials" | #""],
    originFileObj?: file,
    response?: 'a,
    error?: 'i,
    linkProps?: 'i,
    \"type"?: string,
    xhr?: 'a,
    preview?: string,
}

type methods = [|#POST |#PUT |#PATCH |#put |#post |#patch]
type customRequest<'a, 'b> = {
    onProgress?: uploadProgressEvent => (),
    onError?: ('a, 'b) => (),
    onSuccess?: ('b, Webapi.Fetch.Request.t) => (),
    data?: 'a,
    filename?: string,
    file: 'a, // Blob string file
    withCredentials?: bool,
    action: string,
    headers?: Js.Dict.t<string>,
    method: methods
}

type renderAction = {
    download: () => (),
    preview: () => (),
    remove: () => (),
}

type listType = [#text | #picture | #"picture-card"]

type showUploadListConfig<'a, 'b> = {
    showPreviewIcon?: bool,
    showRemoveIcon?: bool,
    showDownloadIcon?: bool,
    previewIcon?: uploadFile<'a, 'b> => React.element,
    removeIcon?: uploadFile<'a, 'b> => React.element,
    downloadIcon?: uploadFile<'a, 'b> => React.element,
}

module ShowUploadList = {
    type t
    external fromBool: bool => t = "%identity"
    external fromConfig: showUploadListConfig<'a, {..}> => t = "%identity"
}

type changeInfo<'a, 'b> = {
    file: uploadFile<'a, 'b>,
    fileList: array<uploadFile<'a, 'b>>,
    event?: uploadProgressEvent
}

@react.component @module("antd")
external make: (
    ~className: string=?,
    ~children: React.element,
    ~accept: string=?,
    ~action: Action.t=?,
    ~beforeUpload: (file, array<file>) => BeforeUploadResult.t=?,
    ~customRequest: customRequest<'a, 'b> => ()=?,
    ~data: file => 'b=?,
    ~defaultFileList: array<uploadFile<'a, {..}>>=?,
    ~directory: bool=?,
    ~disabled: bool=?,
    ~fileList: array<uploadFile<'a, {..}>>=?,
    ~headers: {..}=?,
    ~itemRender: (React.element, uploadFile<'a, {..}>, array<uploadFile<'a, {..}>>, renderAction) => React.element=?,
    ~isImageUrl: uploadFile<'a, {..}> => bool=?,
    ~iconRender: (uploadFile<'a, {..}>, listType) => React.element=?,
    ~listType: listType=?,
    ~maxCount: int=?,
    ~method: methods=?,
    ~multiple: bool=?,
    ~name: string=?,
    ~openFileDialogOnClick: bool=?,
    ~previewFile: Webapi.Blob.t => Promise.t<string>=?,
    ~progress: Progress.inlineT=?,
    ~showUploadList: ShowUploadList.t=?,
    ~withCredentials: bool=?,
    ~onChange: changeInfo<'a, {..}> => ()=?,
    ~onDrop: ReactEvent.Synthetic.t => ()=?,
    ~onDownload: uploadFile<'a, {..}> => ()=?,
    ~onPreview: uploadFile<'a, {..}> => ()=?,
    ~onRemove: uploadFile<'a, {..}> => 'r=?,
) => React.element = "Upload"