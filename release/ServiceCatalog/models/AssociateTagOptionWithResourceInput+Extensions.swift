// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateTagOptionWithResourceInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateTagOptionWithResourceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTagOptionWithResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTagOptionWithResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateTagOptionWithResourceInput>
    public typealias MOutput = OperationOutput<AssociateTagOptionWithResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTagOptionWithResourceOutputError>
}

public struct AssociateTagOptionWithResourceInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateTagOptionWithResourceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTagOptionWithResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTagOptionWithResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateTagOptionWithResourceInput>
    public typealias MOutput = OperationOutput<AssociateTagOptionWithResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTagOptionWithResourceOutputError>
}

public struct AssociateTagOptionWithResourceInputBodyMiddleware: Middleware {
    public let id: String = "AssociateTagOptionWithResourceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateTagOptionWithResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateTagOptionWithResourceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateTagOptionWithResourceInput>
    public typealias MOutput = OperationOutput<AssociateTagOptionWithResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateTagOptionWithResourceOutputError>
}

extension AssociateTagOptionWithResourceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceId = "ResourceId"
        case tagOptionId = "TagOptionId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resourceId = resourceId {
            try encodeContainer.encode(resourceId, forKey: .resourceId)
        }
        if let tagOptionId = tagOptionId {
            try encodeContainer.encode(tagOptionId, forKey: .tagOptionId)
        }
    }
}