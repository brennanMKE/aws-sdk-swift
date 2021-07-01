// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListRestoreJobsInputHeadersMiddleware: Middleware {
    public let id: String = "ListRestoreJobsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListRestoreJobsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListRestoreJobsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListRestoreJobsInput>
    public typealias MOutput = OperationOutput<ListRestoreJobsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListRestoreJobsOutputError>
}

public struct ListRestoreJobsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListRestoreJobsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListRestoreJobsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListRestoreJobsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let byCreatedBefore = input.operationInput.byCreatedBefore {
            let byCreatedBeforeQueryItem = URLQueryItem(name: "createdBefore".urlPercentEncoding(), value: String(byCreatedBefore.iso8601WithoutFractionalSeconds()).urlPercentEncoding())
            input.builder.withQueryItem(byCreatedBeforeQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let maxResults = input.operationInput.maxResults {
            let maxResultsQueryItem = URLQueryItem(name: "maxResults".urlPercentEncoding(), value: String(maxResults).urlPercentEncoding())
            input.builder.withQueryItem(maxResultsQueryItem)
        }
        if let byAccountId = input.operationInput.byAccountId {
            let byAccountIdQueryItem = URLQueryItem(name: "accountId".urlPercentEncoding(), value: String(byAccountId).urlPercentEncoding())
            input.builder.withQueryItem(byAccountIdQueryItem)
        }
        if let byCreatedAfter = input.operationInput.byCreatedAfter {
            let byCreatedAfterQueryItem = URLQueryItem(name: "createdAfter".urlPercentEncoding(), value: String(byCreatedAfter.iso8601WithoutFractionalSeconds()).urlPercentEncoding())
            input.builder.withQueryItem(byCreatedAfterQueryItem)
        }
        if let byStatus = input.operationInput.byStatus {
            let byStatusQueryItem = URLQueryItem(name: "status".urlPercentEncoding(), value: String(byStatus.rawValue).urlPercentEncoding())
            input.builder.withQueryItem(byStatusQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListRestoreJobsInput>
    public typealias MOutput = OperationOutput<ListRestoreJobsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListRestoreJobsOutputError>
}

extension ListRestoreJobsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}