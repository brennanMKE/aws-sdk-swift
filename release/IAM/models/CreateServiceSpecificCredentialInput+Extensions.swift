// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateServiceSpecificCredentialInputHeadersMiddleware: Middleware {
    public let id: String = "CreateServiceSpecificCredentialInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServiceSpecificCredentialOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<CreateServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServiceSpecificCredentialOutputError>
}

public struct CreateServiceSpecificCredentialInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateServiceSpecificCredentialInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServiceSpecificCredentialOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<CreateServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServiceSpecificCredentialOutputError>
}

public struct CreateServiceSpecificCredentialInputBodyMiddleware: Middleware {
    public let id: String = "CreateServiceSpecificCredentialInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateServiceSpecificCredentialInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateServiceSpecificCredentialOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateServiceSpecificCredentialInput>
    public typealias MOutput = OperationOutput<CreateServiceSpecificCredentialOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateServiceSpecificCredentialOutputError>
}

extension CreateServiceSpecificCredentialInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let serviceName = serviceName {
            try container.encode(serviceName, forKey: Key("ServiceName"))
        }
        if let userName = userName {
            try container.encode(userName, forKey: Key("UserName"))
        }
        try container.encode("CreateServiceSpecificCredential", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}