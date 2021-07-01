// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetJobRunInputHeadersMiddleware: Middleware {
    public let id: String = "GetJobRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<GetJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetJobRunInput>
    public typealias MOutput = OperationOutput<GetJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetJobRunOutputError>
}

public struct GetJobRunInputQueryItemMiddleware: Middleware {
    public let id: String = "GetJobRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<GetJobRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetJobRunInput>
    public typealias MOutput = OperationOutput<GetJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetJobRunOutputError>
}

public struct GetJobRunInputBodyMiddleware: Middleware {
    public let id: String = "GetJobRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetJobRunInput>,
                  next: H) -> Swift.Result<OperationOutput<GetJobRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetJobRunInput>
    public typealias MOutput = OperationOutput<GetJobRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetJobRunOutputError>
}

extension GetJobRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case jobName = "JobName"
        case predecessorsIncluded = "PredecessorsIncluded"
        case runId = "RunId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let jobName = jobName {
            try encodeContainer.encode(jobName, forKey: .jobName)
        }
        if predecessorsIncluded != false {
            try encodeContainer.encode(predecessorsIncluded, forKey: .predecessorsIncluded)
        }
        if let runId = runId {
            try encodeContainer.encode(runId, forKey: .runId)
        }
    }
}