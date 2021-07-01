// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetSampleDataInputHeadersMiddleware: Middleware {
    public let id: String = "GetSampleDataInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampleDataInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampleDataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSampleDataInput>
    public typealias MOutput = OperationOutput<GetSampleDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampleDataOutputError>
}

public struct GetSampleDataInputQueryItemMiddleware: Middleware {
    public let id: String = "GetSampleDataInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampleDataInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampleDataOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetSampleDataInput>
    public typealias MOutput = OperationOutput<GetSampleDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampleDataOutputError>
}

public struct GetSampleDataInputBodyMiddleware: Middleware {
    public let id: String = "GetSampleDataInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetSampleDataInput>,
                  next: H) -> Swift.Result<OperationOutput<GetSampleDataOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetSampleDataInput>
    public typealias MOutput = OperationOutput<GetSampleDataOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetSampleDataOutputError>
}

extension GetSampleDataInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case s3SourceConfig = "S3SourceConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let s3SourceConfig = s3SourceConfig {
            try encodeContainer.encode(s3SourceConfig, forKey: .s3SourceConfig)
        }
    }
}