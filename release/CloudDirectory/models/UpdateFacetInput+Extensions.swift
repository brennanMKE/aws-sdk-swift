// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateFacetInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateFacetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFacetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let schemaArn = input.operationInput.schemaArn {
            input.builder.withHeader(name: "x-amz-data-partition", value: String(schemaArn))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFacetInput>
    public typealias MOutput = OperationOutput<UpdateFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFacetOutputError>
}

public struct UpdateFacetInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateFacetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFacetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateFacetInput>
    public typealias MOutput = OperationOutput<UpdateFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFacetOutputError>
}

public struct UpdateFacetInputBodyMiddleware: Middleware {
    public let id: String = "UpdateFacetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateFacetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateFacetInput>
    public typealias MOutput = OperationOutput<UpdateFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateFacetOutputError>
}

extension UpdateFacetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributeUpdates = "AttributeUpdates"
        case name = "Name"
        case objectType = "ObjectType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributeUpdates = attributeUpdates {
            var attributeUpdatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .attributeUpdates)
            for facetattributeupdatelist0 in attributeUpdates {
                try attributeUpdatesContainer.encode(facetattributeupdatelist0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let objectType = objectType {
            try encodeContainer.encode(objectType.rawValue, forKey: .objectType)
        }
    }
}