// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribePHIDetectionJobInputHeadersMiddleware: Middleware {
    public let id: String = "DescribePHIDetectionJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePHIDetectionJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePHIDetectionJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePHIDetectionJobInput>
    public typealias MOutput = OperationOutput<DescribePHIDetectionJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePHIDetectionJobOutputError>
}

public struct DescribePHIDetectionJobInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribePHIDetectionJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePHIDetectionJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePHIDetectionJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribePHIDetectionJobInput>
    public typealias MOutput = OperationOutput<DescribePHIDetectionJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePHIDetectionJobOutputError>
}

public struct DescribePHIDetectionJobInputBodyMiddleware: Middleware {
    public let id: String = "DescribePHIDetectionJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribePHIDetectionJobInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribePHIDetectionJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribePHIDetectionJobInput>
    public typealias MOutput = OperationOutput<DescribePHIDetectionJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribePHIDetectionJobOutputError>
}

extension DescribePHIDetectionJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case jobId = "JobId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let jobId = jobId {
            try encodeContainer.encode(jobId, forKey: .jobId)
        }
    }
}