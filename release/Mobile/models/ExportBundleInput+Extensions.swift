// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ExportBundleInputHeadersMiddleware: Middleware {
    public let id: String = "ExportBundleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExportBundleInput>,
                  next: H) -> Swift.Result<OperationOutput<ExportBundleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExportBundleInput>
    public typealias MOutput = OperationOutput<ExportBundleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExportBundleOutputError>
}

public struct ExportBundleInputQueryItemMiddleware: Middleware {
    public let id: String = "ExportBundleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExportBundleInput>,
                  next: H) -> Swift.Result<OperationOutput<ExportBundleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let projectId = input.operationInput.projectId {
            let projectIdQueryItem = URLQueryItem(name: "projectId".urlPercentEncoding(), value: String(projectId).urlPercentEncoding())
            input.builder.withQueryItem(projectIdQueryItem)
        }
        if let platform = input.operationInput.platform {
            let platformQueryItem = URLQueryItem(name: "platform".urlPercentEncoding(), value: String(platform.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(platformQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExportBundleInput>
    public typealias MOutput = OperationOutput<ExportBundleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExportBundleOutputError>
}

extension ExportBundleInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}