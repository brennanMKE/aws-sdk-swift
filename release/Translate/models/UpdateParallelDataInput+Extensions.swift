// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateParallelDataInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateParallelDataInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateParallelDataInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateParallelDataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateParallelDataInput>
    public typealias MOutput = OperationOutput<UpdateParallelDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateParallelDataOutputError>
}

public struct UpdateParallelDataInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateParallelDataInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateParallelDataInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateParallelDataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateParallelDataInput>
    public typealias MOutput = OperationOutput<UpdateParallelDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateParallelDataOutputError>
}

public struct UpdateParallelDataInputBodyMiddleware: Middleware {
    public let id: String = "UpdateParallelDataInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateParallelDataInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateParallelDataOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateParallelDataInput>
    public typealias MOutput = OperationOutput<UpdateParallelDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateParallelDataOutputError>
}

extension UpdateParallelDataInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case name = "Name"
        case parallelDataConfig = "ParallelDataConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let parallelDataConfig = parallelDataConfig {
            try encodeContainer.encode(parallelDataConfig, forKey: .parallelDataConfig)
        }
    }
}