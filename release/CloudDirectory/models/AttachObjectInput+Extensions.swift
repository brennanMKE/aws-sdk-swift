// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AttachObjectInputHeadersMiddleware: Middleware {
    public let id: String = "AttachObjectInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachObjectInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachObjectOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AttachObjectInput>
    public typealias MOutput = OperationOutput<AttachObjectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachObjectOutputError>
}

public struct AttachObjectInputQueryItemMiddleware: Middleware {
    public let id: String = "AttachObjectInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachObjectInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachObjectOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AttachObjectInput>
    public typealias MOutput = OperationOutput<AttachObjectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachObjectOutputError>
}

public struct AttachObjectInputBodyMiddleware: Middleware {
    public let id: String = "AttachObjectInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AttachObjectInput>,
                  next: H) -> Swift.Result<OperationOutput<AttachObjectOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AttachObjectInput>
    public typealias MOutput = OperationOutput<AttachObjectOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AttachObjectOutputError>
}

extension AttachObjectInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case childReference = "ChildReference"
        case linkName = "LinkName"
        case parentReference = "ParentReference"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let childReference = childReference {
            try encodeContainer.encode(childReference, forKey: .childReference)
        }
        if let linkName = linkName {
            try encodeContainer.encode(linkName, forKey: .linkName)
        }
        if let parentReference = parentReference {
            try encodeContainer.encode(parentReference, forKey: .parentReference)
        }
    }
}