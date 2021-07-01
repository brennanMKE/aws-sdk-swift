// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetCatalogImportStatusInputHeadersMiddleware: Middleware {
    public let id: String = "GetCatalogImportStatusInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCatalogImportStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCatalogImportStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCatalogImportStatusInput>
    public typealias MOutput = OperationOutput<GetCatalogImportStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCatalogImportStatusOutputError>
}

public struct GetCatalogImportStatusInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCatalogImportStatusInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCatalogImportStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCatalogImportStatusOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCatalogImportStatusInput>
    public typealias MOutput = OperationOutput<GetCatalogImportStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCatalogImportStatusOutputError>
}

public struct GetCatalogImportStatusInputBodyMiddleware: Middleware {
    public let id: String = "GetCatalogImportStatusInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCatalogImportStatusInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCatalogImportStatusOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetCatalogImportStatusInput>
    public typealias MOutput = OperationOutput<GetCatalogImportStatusOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCatalogImportStatusOutputError>
}

extension GetCatalogImportStatusInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case catalogId = "CatalogId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let catalogId = catalogId {
            try encodeContainer.encode(catalogId, forKey: .catalogId)
        }
    }
}