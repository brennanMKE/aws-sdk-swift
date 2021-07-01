// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSessionInputHeadersMiddleware: Middleware {
    public let id: String = "GetSessionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSessionInput>
    public typealias MOutput = OperationOutput<GetSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSessionOutputError>
}

public struct GetSessionInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSessionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSessionInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSessionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let checkpointLabelFilter = input.operationInput.checkpointLabelFilter {
            let checkpointLabelFilterQueryItem = URLQueryItem(name: "checkpointLabelFilter".urlPercentEncoding(), value: String(checkpointLabelFilter).urlPercentEncoding())
            input.builder.withQueryItem(checkpointLabelFilterQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSessionInput>
    public typealias MOutput = OperationOutput<GetSessionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSessionOutputError>
}

extension GetSessionInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}