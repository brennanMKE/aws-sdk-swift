// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetDomainStatisticsReportInputHeadersMiddleware: Middleware {
    public let id: String = "GetDomainStatisticsReportInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDomainStatisticsReportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDomainStatisticsReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDomainStatisticsReportInput>
    public typealias MOutput = OperationOutput<GetDomainStatisticsReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDomainStatisticsReportOutputError>
}

public struct GetDomainStatisticsReportInputQueryItemMiddleware: Middleware {
    public let id: String = "GetDomainStatisticsReportInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetDomainStatisticsReportInput>,
                  next: H) -> Swift.Result<OperationOutput<GetDomainStatisticsReportOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let startDate = input.operationInput.startDate {
            let startDateQueryItem = URLQueryItem(name: "StartDate".urlPercentEncoding(), value: String(startDate.iso8601WithoutFractionalSeconds()).urlPercentEncoding())
            input.builder.withQueryItem(startDateQueryItem)
        }
        if let endDate = input.operationInput.endDate {
            let endDateQueryItem = URLQueryItem(name: "EndDate".urlPercentEncoding(), value: String(endDate.iso8601WithoutFractionalSeconds()).urlPercentEncoding())
            input.builder.withQueryItem(endDateQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetDomainStatisticsReportInput>
    public typealias MOutput = OperationOutput<GetDomainStatisticsReportOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetDomainStatisticsReportOutputError>
}

extension GetDomainStatisticsReportInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}