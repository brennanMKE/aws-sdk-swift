// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateSubscriptionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateSubscriptionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSubscriptionOutputError>
}

public struct UpdateSubscriptionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateSubscriptionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSubscriptionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSubscriptionOutputError>
}

public struct UpdateSubscriptionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateSubscriptionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSubscriptionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSubscriptionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateSubscriptionInput>
    public typealias MOutput = OperationOutput<UpdateSubscriptionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSubscriptionOutputError>
}

extension UpdateSubscriptionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case autoRenew = "AutoRenew"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let autoRenew = autoRenew {
            try encodeContainer.encode(autoRenew.rawValue, forKey: .autoRenew)
        }
    }
}