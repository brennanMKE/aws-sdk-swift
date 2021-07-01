// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AttachToIndexInputHeadersMiddleware: Middleware {
    public let id: String = "AttachToIndexInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachToIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachToIndexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let directoryArn = input.operationInput.directoryArn {
            input.builder.withHeader(name: "x-amz-data-partition", value: String(directoryArn))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachToIndexInput>
    public typealias MOutput = OperationOutput<AttachToIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachToIndexOutputError>
}

public struct AttachToIndexInputQueryItemMiddleware: Middleware {
    public let id: String = "AttachToIndexInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachToIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachToIndexOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachToIndexInput>
    public typealias MOutput = OperationOutput<AttachToIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachToIndexOutputError>
}

public struct AttachToIndexInputBodyMiddleware: Middleware {
    public let id: String = "AttachToIndexInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachToIndexInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachToIndexOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AttachToIndexInput>
    public typealias MOutput = OperationOutput<AttachToIndexOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachToIndexOutputError>
}

extension AttachToIndexInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case indexReference = "IndexReference"
        case targetReference = "TargetReference"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let indexReference = indexReference {
            try encodeContainer.encode(indexReference, forKey: .indexReference)
        }
        if let targetReference = targetReference {
            try encodeContainer.encode(targetReference, forKey: .targetReference)
        }
    }
}