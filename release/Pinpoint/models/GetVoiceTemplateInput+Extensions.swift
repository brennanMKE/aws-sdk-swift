// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetVoiceTemplateInputHeadersMiddleware: Middleware {
    public let id: String = "GetVoiceTemplateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVoiceTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVoiceTemplateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetVoiceTemplateInput>
    public typealias MOutput = OperationOutput<GetVoiceTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVoiceTemplateOutputError>
}

public struct GetVoiceTemplateInputQueryItemMiddleware: Middleware {
    public let id: String = "GetVoiceTemplateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetVoiceTemplateInput>,
                  next: H) -> Swift.Result<OperationOutput<GetVoiceTemplateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetVoiceTemplateInput>
    public typealias MOutput = OperationOutput<GetVoiceTemplateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetVoiceTemplateOutputError>
}

extension GetVoiceTemplateInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}