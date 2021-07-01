// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeregisterManagedInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "DeregisterManagedInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterManagedInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterManagedInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterManagedInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterManagedInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterManagedInstanceOutputError>
}

public struct DeregisterManagedInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeregisterManagedInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterManagedInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterManagedInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterManagedInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterManagedInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterManagedInstanceOutputError>
}

public struct DeregisterManagedInstanceInputBodyMiddleware: Middleware {
    public let id: String = "DeregisterManagedInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterManagedInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterManagedInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeregisterManagedInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterManagedInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterManagedInstanceOutputError>
}

extension DeregisterManagedInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case instanceId = "InstanceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let instanceId = instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
    }
}