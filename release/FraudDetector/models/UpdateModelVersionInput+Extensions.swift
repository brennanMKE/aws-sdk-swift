// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateModelVersionInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateModelVersionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateModelVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateModelVersionInput>
    public typealias MOutput = OperationOutput<UpdateModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateModelVersionOutputError>
}

public struct UpdateModelVersionInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateModelVersionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateModelVersionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateModelVersionInput>
    public typealias MOutput = OperationOutput<UpdateModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateModelVersionOutputError>
}

public struct UpdateModelVersionInputBodyMiddleware: Middleware {
    public let id: String = "UpdateModelVersionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateModelVersionInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateModelVersionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateModelVersionInput>
    public typealias MOutput = OperationOutput<UpdateModelVersionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateModelVersionOutputError>
}

extension UpdateModelVersionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case externalEventsDetail
        case majorVersionNumber
        case modelId
        case modelType
        case tags
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let externalEventsDetail = externalEventsDetail {
            try encodeContainer.encode(externalEventsDetail, forKey: .externalEventsDetail)
        }
        if let majorVersionNumber = majorVersionNumber {
            try encodeContainer.encode(majorVersionNumber, forKey: .majorVersionNumber)
        }
        if let modelId = modelId {
            try encodeContainer.encode(modelId, forKey: .modelId)
        }
        if let modelType = modelType {
            try encodeContainer.encode(modelType.rawValue, forKey: .modelType)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}