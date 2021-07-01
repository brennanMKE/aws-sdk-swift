// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListStreamingSessionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListStreamingSessionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamingSessionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamingSessionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamingSessionsInput>
    public typealias MOutput = OperationOutput<ListStreamingSessionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamingSessionsOutputError>
}

public struct ListStreamingSessionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListStreamingSessionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListStreamingSessionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListStreamingSessionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let createdBy = input.operationInput.createdBy {
            let createdByQueryItem = URLQueryItem(name: "createdBy".urlPercentEncoding(), value: String(createdBy).urlPercentEncoding())
            input.builder.withQueryItem(createdByQueryItem)
        }
        if let nextToken = input.operationInput.nextToken {
            let nextTokenQueryItem = URLQueryItem(name: "nextToken".urlPercentEncoding(), value: String(nextToken).urlPercentEncoding())
            input.builder.withQueryItem(nextTokenQueryItem)
        }
        if let sessionIds = input.operationInput.sessionIds {
            let sessionIdsQueryItem = URLQueryItem(name: "sessionIds".urlPercentEncoding(), value: String(sessionIds).urlPercentEncoding())
            input.builder.withQueryItem(sessionIdsQueryItem)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListStreamingSessionsInput>
    public typealias MOutput = OperationOutput<ListStreamingSessionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListStreamingSessionsOutputError>
}

extension ListStreamingSessionsInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}