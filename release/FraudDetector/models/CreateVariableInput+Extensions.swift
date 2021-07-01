// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateVariableInputHeadersMiddleware: Middleware {
    public let id: String = "CreateVariableInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVariableInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVariableOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVariableInput>
    public typealias MOutput = OperationOutput<CreateVariableOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVariableOutputError>
}

public struct CreateVariableInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateVariableInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVariableInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVariableOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateVariableInput>
    public typealias MOutput = OperationOutput<CreateVariableOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVariableOutputError>
}

public struct CreateVariableInputBodyMiddleware: Middleware {
    public let id: String = "CreateVariableInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateVariableInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateVariableOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateVariableInput>
    public typealias MOutput = OperationOutput<CreateVariableOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateVariableOutputError>
}

extension CreateVariableInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataSource
        case dataType
        case defaultValue
        case description
        case name
        case tags
        case variableType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dataSource = dataSource {
            try encodeContainer.encode(dataSource.rawValue, forKey: .dataSource)
        }
        if let dataType = dataType {
            try encodeContainer.encode(dataType.rawValue, forKey: .dataType)
        }
        if let defaultValue = defaultValue {
            try encodeContainer.encode(defaultValue, forKey: .defaultValue)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let variableType = variableType {
            try encodeContainer.encode(variableType, forKey: .variableType)
        }
    }
}