// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateConnectorDefinitionVersionInputHeadersMiddleware: Middleware {
    public let id: String = "CreateConnectorDefinitionVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConnectorDefinitionVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConnectorDefinitionVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let amznClientToken = input.operationInput.amznClientToken {
            input.builder.withHeader(name: "X-Amzn-Client-Token", value: String(amznClientToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConnectorDefinitionVersionInput>
    public typealias MOutput = OperationOutput<CreateConnectorDefinitionVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConnectorDefinitionVersionOutputError>
}

public struct CreateConnectorDefinitionVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateConnectorDefinitionVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConnectorDefinitionVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConnectorDefinitionVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateConnectorDefinitionVersionInput>
    public typealias MOutput = OperationOutput<CreateConnectorDefinitionVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConnectorDefinitionVersionOutputError>
}

public struct CreateConnectorDefinitionVersionInputBodyMiddleware: Middleware {
    public let id: String = "CreateConnectorDefinitionVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateConnectorDefinitionVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateConnectorDefinitionVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateConnectorDefinitionVersionInput>
    public typealias MOutput = OperationOutput<CreateConnectorDefinitionVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateConnectorDefinitionVersionOutputError>
}

extension CreateConnectorDefinitionVersionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectors = "Connectors"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let connectors = connectors {
            var connectorsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .connectors)
            for __listofconnector0 in connectors {
                try connectorsContainer.encode(__listofconnector0)
            }
        }
    }
}