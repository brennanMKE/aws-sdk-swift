// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteAccountCustomizationInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteAccountCustomizationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccountCustomizationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccountCustomizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccountCustomizationInput>
    public typealias MOutput = OperationOutput<DeleteAccountCustomizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccountCustomizationOutputError>
}

public struct DeleteAccountCustomizationInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteAccountCustomizationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteAccountCustomizationInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteAccountCustomizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let namespace = input.operationInput.namespace {
            let namespaceQueryItem = URLQueryItem(name: "namespace".urlPercentEncoding(), value: String(namespace).urlPercentEncoding())
            input.builder.withQueryItem(namespaceQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteAccountCustomizationInput>
    public typealias MOutput = OperationOutput<DeleteAccountCustomizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteAccountCustomizationOutputError>
}

extension DeleteAccountCustomizationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}