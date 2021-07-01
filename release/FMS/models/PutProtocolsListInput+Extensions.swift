// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutProtocolsListInputHeadersMiddleware: Middleware {
    public let id: String = "PutProtocolsListInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutProtocolsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutProtocolsListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutProtocolsListInput>
    public typealias MOutput = OperationOutput<PutProtocolsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutProtocolsListOutputError>
}

public struct PutProtocolsListInputQueryItemMiddleware: Middleware {
    public let id: String = "PutProtocolsListInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutProtocolsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutProtocolsListOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<PutProtocolsListInput>
    public typealias MOutput = OperationOutput<PutProtocolsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutProtocolsListOutputError>
}

public struct PutProtocolsListInputBodyMiddleware: Middleware {
    public let id: String = "PutProtocolsListInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<PutProtocolsListInput>,
                  next: H) -> Swift.Result<OperationOutput<PutProtocolsListOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<PutProtocolsListInput>
    public typealias MOutput = OperationOutput<PutProtocolsListOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<PutProtocolsListOutputError>
}

extension PutProtocolsListInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case protocolsList = "ProtocolsList"
        case tagList = "TagList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let protocolsList = protocolsList {
            try encodeContainer.encode(protocolsList, forKey: .protocolsList)
        }
        if let tagList = tagList {
            var tagListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagList)
            for taglist0 in tagList {
                try tagListContainer.encode(taglist0)
            }
        }
    }
}