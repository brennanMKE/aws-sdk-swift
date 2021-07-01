// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTrainingJobInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTrainingJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrainingJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrainingJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrainingJobInput>
    public typealias MOutput = OperationOutput<UpdateTrainingJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrainingJobOutputError>
}

public struct UpdateTrainingJobInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTrainingJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrainingJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrainingJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTrainingJobInput>
    public typealias MOutput = OperationOutput<UpdateTrainingJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrainingJobOutputError>
}

public struct UpdateTrainingJobInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTrainingJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTrainingJobInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTrainingJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTrainingJobInput>
    public typealias MOutput = OperationOutput<UpdateTrainingJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTrainingJobOutputError>
}

extension UpdateTrainingJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case profilerConfig = "ProfilerConfig"
        case profilerRuleConfigurations = "ProfilerRuleConfigurations"
        case trainingJobName = "TrainingJobName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let profilerConfig = profilerConfig {
            try encodeContainer.encode(profilerConfig, forKey: .profilerConfig)
        }
        if let profilerRuleConfigurations = profilerRuleConfigurations {
            var profilerRuleConfigurationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .profilerRuleConfigurations)
            for profilerruleconfigurations0 in profilerRuleConfigurations {
                try profilerRuleConfigurationsContainer.encode(profilerruleconfigurations0)
            }
        }
        if let trainingJobName = trainingJobName {
            try encodeContainer.encode(trainingJobName, forKey: .trainingJobName)
        }
    }
}