// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDocumentInputHeadersMiddleware: Middleware {
    public let id: String = "GetDocumentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDocumentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDocumentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetDocumentInput>
    public typealias MOutput = OperationOutput<GetDocumentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDocumentOutputError>
}

public struct GetDocumentInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDocumentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDocumentInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDocumentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        let includeCustomMetadataQueryItem = URLQueryItem(name: "includeCustomMetadata".urlPercentEncoding(), value: String(input.operationInput.includeCustomMetadata).urlPercentEncoding())
        input.builder.withQueryItem(includeCustomMetadataQueryItem)
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDocumentInput>
    public typealias MOutput = OperationOutput<GetDocumentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDocumentOutputError>
}

extension GetDocumentInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}