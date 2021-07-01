// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListSupportedPhoneNumberCountriesInputHeadersMiddleware: Middleware {
    public let id: String = "ListSupportedPhoneNumberCountriesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSupportedPhoneNumberCountriesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSupportedPhoneNumberCountriesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSupportedPhoneNumberCountriesInput>
    public typealias MOutput = OperationOutput<ListSupportedPhoneNumberCountriesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSupportedPhoneNumberCountriesOutputError>
}

public struct ListSupportedPhoneNumberCountriesInputQueryItemMiddleware: Middleware {
    public let id: String = "ListSupportedPhoneNumberCountriesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListSupportedPhoneNumberCountriesInput>,
                  next: H) -> Swift.Result<OperationOutput<ListSupportedPhoneNumberCountriesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let productType = input.operationInput.productType {
            let productTypeQueryItem = URLQueryItem(name: "product-type".urlPercentEncoding(), value: String(productType.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(productTypeQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListSupportedPhoneNumberCountriesInput>
    public typealias MOutput = OperationOutput<ListSupportedPhoneNumberCountriesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListSupportedPhoneNumberCountriesOutputError>
}

extension ListSupportedPhoneNumberCountriesInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}