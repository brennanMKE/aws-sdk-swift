// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteCustomMetadataInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteCustomMetadataInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCustomMetadataInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteCustomMetadataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let authenticationToken = input.operationInput.authenticationToken {
            input.builder.withHeader(name: "Authentication", value: String(authenticationToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteCustomMetadataInput>
    public typealias MOutput = OperationOutput<DeleteCustomMetadataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteCustomMetadataOutputError>
}

public struct DeleteCustomMetadataInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteCustomMetadataInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteCustomMetadataInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteCustomMetadataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let versionId = input.operationInput.versionId {
            let versionIdQueryItem = URLQueryItem(name: "versionId".urlPercentEncoding(), value: String(versionId).urlPercentEncoding())
            input.builder.withQueryItem(versionIdQueryItem)
        }
        let deleteAllQueryItem = URLQueryItem(name: "deleteAll".urlPercentEncoding(), value: String(input.operationInput.deleteAll).urlPercentEncoding())
        input.builder.withQueryItem(deleteAllQueryItem)
        if let keys = input.operationInput.keys {
            keys.forEach { queryItemValue in
                let queryItem = URLQueryItem(name: "keys".urlPercentEncoding(), value: String(queryItemValue).urlPercentEncoding())
                input.builder.withQueryItem(queryItem)
            }
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteCustomMetadataInput>
    public typealias MOutput = OperationOutput<DeleteCustomMetadataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteCustomMetadataOutputError>
}

extension DeleteCustomMetadataInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}