// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StopBgpFailoverTestInputHeadersMiddleware: Middleware {
    public let id: String = "StopBgpFailoverTestInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopBgpFailoverTestInput>,
                  next: H) -> Swift.Result<OperationOutput<StopBgpFailoverTestOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopBgpFailoverTestInput>
    public typealias MOutput = OperationOutput<StopBgpFailoverTestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopBgpFailoverTestOutputError>
}

public struct StopBgpFailoverTestInputQueryItemMiddleware: Middleware {
    public let id: String = "StopBgpFailoverTestInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopBgpFailoverTestInput>,
                  next: H) -> Swift.Result<OperationOutput<StopBgpFailoverTestOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopBgpFailoverTestInput>
    public typealias MOutput = OperationOutput<StopBgpFailoverTestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopBgpFailoverTestOutputError>
}

public struct StopBgpFailoverTestInputBodyMiddleware: Middleware {
    public let id: String = "StopBgpFailoverTestInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StopBgpFailoverTestInput>,
                  next: H) -> Swift.Result<OperationOutput<StopBgpFailoverTestOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StopBgpFailoverTestInput>
    public typealias MOutput = OperationOutput<StopBgpFailoverTestOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StopBgpFailoverTestOutputError>
}

extension StopBgpFailoverTestInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case virtualInterfaceId
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let virtualInterfaceId = virtualInterfaceId {
            try encodeContainer.encode(virtualInterfaceId, forKey: .virtualInterfaceId)
        }
    }
}