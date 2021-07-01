// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetGeoLocationInputHeadersMiddleware: Middleware {
    public let id: String = "GetGeoLocationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGeoLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGeoLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGeoLocationInput>
    public typealias MOutput = OperationOutput<GetGeoLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGeoLocationOutputError>
}

public struct GetGeoLocationInputQueryItemMiddleware: Middleware {
    public let id: String = "GetGeoLocationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetGeoLocationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetGeoLocationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let continentCode = input.operationInput.continentCode {
            let continentCodeQueryItem = URLQueryItem(name: "continentcode".urlPercentEncoding(), value: String(continentCode).urlPercentEncoding())
            input.builder.withQueryItem(continentCodeQueryItem)
        }
        if let countryCode = input.operationInput.countryCode {
            let countryCodeQueryItem = URLQueryItem(name: "countrycode".urlPercentEncoding(), value: String(countryCode).urlPercentEncoding())
            input.builder.withQueryItem(countryCodeQueryItem)
        }
        if let subdivisionCode = input.operationInput.subdivisionCode {
            let subdivisionCodeQueryItem = URLQueryItem(name: "subdivisioncode".urlPercentEncoding(), value: String(subdivisionCode).urlPercentEncoding())
            input.builder.withQueryItem(subdivisionCodeQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetGeoLocationInput>
    public typealias MOutput = OperationOutput<GetGeoLocationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetGeoLocationOutputError>
}

extension GetGeoLocationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}