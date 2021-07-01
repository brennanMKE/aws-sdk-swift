// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateBackendEnvironmentInputHeadersMiddleware: Middleware {
    public let id: String = "CreateBackendEnvironmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBackendEnvironmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBackendEnvironmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBackendEnvironmentInput>
    public typealias MOutput = OperationOutput<CreateBackendEnvironmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBackendEnvironmentOutputError>
}

public struct CreateBackendEnvironmentInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateBackendEnvironmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBackendEnvironmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBackendEnvironmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateBackendEnvironmentInput>
    public typealias MOutput = OperationOutput<CreateBackendEnvironmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBackendEnvironmentOutputError>
}

public struct CreateBackendEnvironmentInputBodyMiddleware: Middleware {
    public let id: String = "CreateBackendEnvironmentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateBackendEnvironmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateBackendEnvironmentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateBackendEnvironmentInput>
    public typealias MOutput = OperationOutput<CreateBackendEnvironmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateBackendEnvironmentOutputError>
}

extension CreateBackendEnvironmentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deploymentArtifacts
        case environmentName
        case stackName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deploymentArtifacts = deploymentArtifacts {
            try encodeContainer.encode(deploymentArtifacts, forKey: .deploymentArtifacts)
        }
        if let environmentName = environmentName {
            try encodeContainer.encode(environmentName, forKey: .environmentName)
        }
        if let stackName = stackName {
            try encodeContainer.encode(stackName, forKey: .stackName)
        }
    }
}