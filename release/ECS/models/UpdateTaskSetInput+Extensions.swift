// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTaskSetInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTaskSetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTaskSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTaskSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTaskSetInput>
    public typealias MOutput = OperationOutput<UpdateTaskSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTaskSetOutputError>
}

public struct UpdateTaskSetInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTaskSetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTaskSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTaskSetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTaskSetInput>
    public typealias MOutput = OperationOutput<UpdateTaskSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTaskSetOutputError>
}

public struct UpdateTaskSetInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTaskSetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTaskSetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTaskSetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTaskSetInput>
    public typealias MOutput = OperationOutput<UpdateTaskSetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTaskSetOutputError>
}

extension UpdateTaskSetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cluster
        case scale
        case service
        case taskSet
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cluster = cluster {
            try encodeContainer.encode(cluster, forKey: .cluster)
        }
        if let scale = scale {
            try encodeContainer.encode(scale, forKey: .scale)
        }
        if let service = service {
            try encodeContainer.encode(service, forKey: .service)
        }
        if let taskSet = taskSet {
            try encodeContainer.encode(taskSet, forKey: .taskSet)
        }
    }
}