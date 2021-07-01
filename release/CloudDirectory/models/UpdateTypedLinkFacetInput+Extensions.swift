// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateTypedLinkFacetInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateTypedLinkFacetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTypedLinkFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTypedLinkFacetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTypedLinkFacetInput>
    public typealias MOutput = OperationOutput<UpdateTypedLinkFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTypedLinkFacetOutputError>
}

public struct UpdateTypedLinkFacetInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateTypedLinkFacetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTypedLinkFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTypedLinkFacetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateTypedLinkFacetInput>
    public typealias MOutput = OperationOutput<UpdateTypedLinkFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTypedLinkFacetOutputError>
}

public struct UpdateTypedLinkFacetInputBodyMiddleware: Middleware {
    public let id: String = "UpdateTypedLinkFacetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateTypedLinkFacetInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateTypedLinkFacetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateTypedLinkFacetInput>
    public typealias MOutput = OperationOutput<UpdateTypedLinkFacetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateTypedLinkFacetOutputError>
}

extension UpdateTypedLinkFacetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attributeUpdates = "AttributeUpdates"
        case identityAttributeOrder = "IdentityAttributeOrder"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attributeUpdates = attributeUpdates {
            var attributeUpdatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .attributeUpdates)
            for typedlinkfacetattributeupdatelist0 in attributeUpdates {
                try attributeUpdatesContainer.encode(typedlinkfacetattributeupdatelist0)
            }
        }
        if let identityAttributeOrder = identityAttributeOrder {
            var identityAttributeOrderContainer = encodeContainer.nestedUnkeyedContainer(forKey: .identityAttributeOrder)
            for attributenamelist0 in identityAttributeOrder {
                try identityAttributeOrderContainer.encode(attributenamelist0)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}