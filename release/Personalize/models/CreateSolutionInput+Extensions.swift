// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateSolutionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateSolutionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSolutionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSolutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSolutionInput>
    public typealias MOutput = OperationOutput<CreateSolutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSolutionOutputError>
}

public struct CreateSolutionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateSolutionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSolutionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSolutionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSolutionInput>
    public typealias MOutput = OperationOutput<CreateSolutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSolutionOutputError>
}

public struct CreateSolutionInputBodyMiddleware: Middleware {
    public let id: String = "CreateSolutionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSolutionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSolutionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateSolutionInput>
    public typealias MOutput = OperationOutput<CreateSolutionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSolutionOutputError>
}

extension CreateSolutionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case datasetGroupArn
        case eventType
        case name
        case performAutoML
        case performHPO
        case recipeArn
        case solutionConfig
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let datasetGroupArn = datasetGroupArn {
            try encodeContainer.encode(datasetGroupArn, forKey: .datasetGroupArn)
        }
        if let eventType = eventType {
            try encodeContainer.encode(eventType, forKey: .eventType)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if performAutoML != false {
            try encodeContainer.encode(performAutoML, forKey: .performAutoML)
        }
        if let performHPO = performHPO {
            try encodeContainer.encode(performHPO, forKey: .performHPO)
        }
        if let recipeArn = recipeArn {
            try encodeContainer.encode(recipeArn, forKey: .recipeArn)
        }
        if let solutionConfig = solutionConfig {
            try encodeContainer.encode(solutionConfig, forKey: .solutionConfig)
        }
    }
}