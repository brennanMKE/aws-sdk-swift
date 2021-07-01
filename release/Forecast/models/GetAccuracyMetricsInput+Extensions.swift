// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAccuracyMetricsInputHeadersMiddleware: Middleware {
    public let id: String = "GetAccuracyMetricsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccuracyMetricsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccuracyMetricsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccuracyMetricsInput>
    public typealias MOutput = OperationOutput<GetAccuracyMetricsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccuracyMetricsOutputError>
}

public struct GetAccuracyMetricsInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAccuracyMetricsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccuracyMetricsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccuracyMetricsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAccuracyMetricsInput>
    public typealias MOutput = OperationOutput<GetAccuracyMetricsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccuracyMetricsOutputError>
}

public struct GetAccuracyMetricsInputBodyMiddleware: Middleware {
    public let id: String = "GetAccuracyMetricsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAccuracyMetricsInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAccuracyMetricsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetAccuracyMetricsInput>
    public typealias MOutput = OperationOutput<GetAccuracyMetricsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAccuracyMetricsOutputError>
}

extension GetAccuracyMetricsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case predictorArn = "PredictorArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let predictorArn = predictorArn {
            try encodeContainer.encode(predictorArn, forKey: .predictorArn)
        }
    }
}