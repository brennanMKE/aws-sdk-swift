// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct OptInPhoneNumberInputHeadersMiddleware: Middleware {
    public let id: String = "OptInPhoneNumberInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<OptInPhoneNumberInput>,
                  next: H) -> Swift.Result<OperationOutput<OptInPhoneNumberOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<OptInPhoneNumberInput>
    public typealias MOutput = OperationOutput<OptInPhoneNumberOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<OptInPhoneNumberOutputError>
}

public struct OptInPhoneNumberInputQueryItemMiddleware: Middleware {
    public let id: String = "OptInPhoneNumberInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<OptInPhoneNumberInput>,
                  next: H) -> Swift.Result<OperationOutput<OptInPhoneNumberOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<OptInPhoneNumberInput>
    public typealias MOutput = OperationOutput<OptInPhoneNumberOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<OptInPhoneNumberOutputError>
}

public struct OptInPhoneNumberInputBodyMiddleware: Middleware {
    public let id: String = "OptInPhoneNumberInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<OptInPhoneNumberInput>,
                  next: H) -> Swift.Result<OperationOutput<OptInPhoneNumberOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<OptInPhoneNumberInput>
    public typealias MOutput = OperationOutput<OptInPhoneNumberOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<OptInPhoneNumberOutputError>
}

extension OptInPhoneNumberInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let phoneNumber = phoneNumber {
            try container.encode(phoneNumber, forKey: Key("phoneNumber"))
        }
        try container.encode("OptInPhoneNumber", forKey:Key("Action"))
        try container.encode("2010-03-31", forKey:Key("Version"))
    }
}