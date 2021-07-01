// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartHumanLoopInputHeadersMiddleware: Middleware {
    public let id: String = "StartHumanLoopInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartHumanLoopInput>,
                  next: H) -> Swift.Result<OperationOutput<StartHumanLoopOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartHumanLoopInput>
    public typealias MOutput = OperationOutput<StartHumanLoopOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartHumanLoopOutputError>
}

public struct StartHumanLoopInputQueryItemMiddleware: Middleware {
    public let id: String = "StartHumanLoopInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartHumanLoopInput>,
                  next: H) -> Swift.Result<OperationOutput<StartHumanLoopOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartHumanLoopInput>
    public typealias MOutput = OperationOutput<StartHumanLoopOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartHumanLoopOutputError>
}

public struct StartHumanLoopInputBodyMiddleware: Middleware {
    public let id: String = "StartHumanLoopInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartHumanLoopInput>,
                  next: H) -> Swift.Result<OperationOutput<StartHumanLoopOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartHumanLoopInput>
    public typealias MOutput = OperationOutput<StartHumanLoopOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartHumanLoopOutputError>
}

extension StartHumanLoopInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataAttributes = "DataAttributes"
        case flowDefinitionArn = "FlowDefinitionArn"
        case humanLoopInput = "HumanLoopInput"
        case humanLoopName = "HumanLoopName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dataAttributes = dataAttributes {
            try encodeContainer.encode(dataAttributes, forKey: .dataAttributes)
        }
        if let flowDefinitionArn = flowDefinitionArn {
            try encodeContainer.encode(flowDefinitionArn, forKey: .flowDefinitionArn)
        }
        if let humanLoopInput = humanLoopInput {
            try encodeContainer.encode(humanLoopInput, forKey: .humanLoopInput)
        }
        if let humanLoopName = humanLoopName {
            try encodeContainer.encode(humanLoopName, forKey: .humanLoopName)
        }
    }
}