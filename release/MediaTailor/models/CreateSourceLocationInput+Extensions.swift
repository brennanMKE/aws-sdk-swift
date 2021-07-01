// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateSourceLocationInputHeadersMiddleware: Middleware {
    public let id: String = "CreateSourceLocationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSourceLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSourceLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSourceLocationInput>
    public typealias MOutput = OperationOutput<CreateSourceLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSourceLocationOutputError>
}

public struct CreateSourceLocationInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateSourceLocationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSourceLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSourceLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateSourceLocationInput>
    public typealias MOutput = OperationOutput<CreateSourceLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSourceLocationOutputError>
}

public struct CreateSourceLocationInputBodyMiddleware: Middleware {
    public let id: String = "CreateSourceLocationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateSourceLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateSourceLocationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateSourceLocationInput>
    public typealias MOutput = OperationOutput<CreateSourceLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateSourceLocationOutputError>
}

extension CreateSourceLocationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessConfiguration = "AccessConfiguration"
        case defaultSegmentDeliveryConfiguration = "DefaultSegmentDeliveryConfiguration"
        case httpConfiguration = "HttpConfiguration"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessConfiguration = accessConfiguration {
            try encodeContainer.encode(accessConfiguration, forKey: .accessConfiguration)
        }
        if let defaultSegmentDeliveryConfiguration = defaultSegmentDeliveryConfiguration {
            try encodeContainer.encode(defaultSegmentDeliveryConfiguration, forKey: .defaultSegmentDeliveryConfiguration)
        }
        if let httpConfiguration = httpConfiguration {
            try encodeContainer.encode(httpConfiguration, forKey: .httpConfiguration)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, __mapof__string0) in tags {
                try tagsContainer.encode(__mapof__string0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}