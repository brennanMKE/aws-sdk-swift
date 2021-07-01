// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeCertificatesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeCertificatesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCertificatesInput>
    public typealias MOutput = OperationOutput<DescribeCertificatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificatesOutputError>
}

public struct DescribeCertificatesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeCertificatesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificatesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeCertificatesInput>
    public typealias MOutput = OperationOutput<DescribeCertificatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificatesOutputError>
}

public struct DescribeCertificatesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeCertificatesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeCertificatesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeCertificatesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeCertificatesInput>
    public typealias MOutput = OperationOutput<DescribeCertificatesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeCertificatesOutputError>
}

extension DescribeCertificatesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case filters = "Filters"
        case marker = "Marker"
        case maxRecords = "MaxRecords"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let filters = filters {
            var filtersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .filters)
            for filterlist0 in filters {
                try filtersContainer.encode(filterlist0)
            }
        }
        if let marker = marker {
            try encodeContainer.encode(marker, forKey: .marker)
        }
        if let maxRecords = maxRecords {
            try encodeContainer.encode(maxRecords, forKey: .maxRecords)
        }
    }
}