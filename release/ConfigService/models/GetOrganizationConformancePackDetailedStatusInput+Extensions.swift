// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetOrganizationConformancePackDetailedStatusInputHeadersMiddleware: Middleware {
    public let id: String = "GetOrganizationConformancePackDetailedStatusInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>
    public typealias MOutput = OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetOrganizationConformancePackDetailedStatusOutputError>
}

public struct GetOrganizationConformancePackDetailedStatusInputQueryItemMiddleware: Middleware {
    public let id: String = "GetOrganizationConformancePackDetailedStatusInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>
    public typealias MOutput = OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetOrganizationConformancePackDetailedStatusOutputError>
}

public struct GetOrganizationConformancePackDetailedStatusInputBodyMiddleware: Middleware {
    public let id: String = "GetOrganizationConformancePackDetailedStatusInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetOrganizationConformancePackDetailedStatusInput>
    public typealias MOutput = OperationOutput<GetOrganizationConformancePackDetailedStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetOrganizationConformancePackDetailedStatusOutputError>
}

extension GetOrganizationConformancePackDetailedStatusInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case limit = "Limit"
        case nextToken = "NextToken"
        case organizationConformancePackName = "OrganizationConformancePackName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            try encodeContainer.encode(filters, forKey: .filters)
        }
        if limit != 0 {
            try encodeContainer.encode(limit, forKey: .limit)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let organizationConformancePackName = organizationConformancePackName {
            try encodeContainer.encode(organizationConformancePackName, forKey: .organizationConformancePackName)
        }
    }
}