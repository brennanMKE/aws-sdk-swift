// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSmsTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "GetSmsTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSmsTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSmsTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSmsTemplateInput>
    public typealias MOutput = OperationOutput<GetSmsTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSmsTemplateOutputError>
}

public struct GetSmsTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSmsTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSmsTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSmsTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let version = input.operationInput.version {
            let versionQueryItem = URLQueryItem(name: "version".urlPercentEncoding(), value: String(version).urlPercentEncoding())
            input.builder.withQueryItem(versionQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSmsTemplateInput>
    public typealias MOutput = OperationOutput<GetSmsTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSmsTemplateOutputError>
}

extension GetSmsTemplateInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}