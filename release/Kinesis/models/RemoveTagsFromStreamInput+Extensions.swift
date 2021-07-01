// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RemoveTagsFromStreamInputHeadersMiddleware: Middleware {
    public let id: String = "RemoveTagsFromStreamInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveTagsFromStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveTagsFromStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveTagsFromStreamInput>
    public typealias MOutput = OperationOutput<RemoveTagsFromStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveTagsFromStreamOutputError>
}

public struct RemoveTagsFromStreamInputQueryItemMiddleware: Middleware {
    public let id: String = "RemoveTagsFromStreamInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveTagsFromStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveTagsFromStreamOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RemoveTagsFromStreamInput>
    public typealias MOutput = OperationOutput<RemoveTagsFromStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveTagsFromStreamOutputError>
}

public struct RemoveTagsFromStreamInputBodyMiddleware: Middleware {
    public let id: String = "RemoveTagsFromStreamInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RemoveTagsFromStreamInput>,
                  next: H) -> Swift.Result<OperationOutput<RemoveTagsFromStreamOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RemoveTagsFromStreamInput>
    public typealias MOutput = OperationOutput<RemoveTagsFromStreamOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RemoveTagsFromStreamOutputError>
}

extension RemoveTagsFromStreamInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case streamName = "StreamName"
        case tagKeys = "TagKeys"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let streamName = streamName {
            try encodeContainer.encode(streamName, forKey: .streamName)
        }
        if let tagKeys = tagKeys {
            var tagKeysContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagKeys)
            for tagkeylist0 in tagKeys {
                try tagKeysContainer.encode(tagkeylist0)
            }
        }
    }
}