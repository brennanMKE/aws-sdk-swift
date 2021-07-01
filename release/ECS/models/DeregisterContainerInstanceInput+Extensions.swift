// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeregisterContainerInstanceInputHeadersMiddleware: Middleware {
    public let id: String = "DeregisterContainerInstanceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterContainerInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterContainerInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterContainerInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterContainerInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterContainerInstanceOutputError>
}

public struct DeregisterContainerInstanceInputQueryItemMiddleware: Middleware {
    public let id: String = "DeregisterContainerInstanceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterContainerInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterContainerInstanceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeregisterContainerInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterContainerInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterContainerInstanceOutputError>
}

public struct DeregisterContainerInstanceInputBodyMiddleware: Middleware {
    public let id: String = "DeregisterContainerInstanceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeregisterContainerInstanceInput>,
                  next: H) -> Swift.Result<OperationOutput<DeregisterContainerInstanceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeregisterContainerInstanceInput>
    public typealias MOutput = OperationOutput<DeregisterContainerInstanceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeregisterContainerInstanceOutputError>
}

extension DeregisterContainerInstanceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cluster
        case containerInstance
        case force
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cluster = cluster {
            try encodeContainer.encode(cluster, forKey: .cluster)
        }
        if let containerInstance = containerInstance {
            try encodeContainer.encode(containerInstance, forKey: .containerInstance)
        }
        if let force = force {
            try encodeContainer.encode(force, forKey: .force)
        }
    }
}