// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeBuildInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeBuildInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBuildOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBuildInput>
    public typealias MOutput = OperationOutput<DescribeBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBuildOutputError>
}

public struct DescribeBuildInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeBuildInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBuildOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeBuildInput>
    public typealias MOutput = OperationOutput<DescribeBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBuildOutputError>
}

public struct DescribeBuildInputBodyMiddleware: Middleware {
    public let id: String = "DescribeBuildInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeBuildInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeBuildOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeBuildInput>
    public typealias MOutput = OperationOutput<DescribeBuildOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeBuildOutputError>
}

extension DescribeBuildInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case buildId = "BuildId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let buildId = buildId {
            try encodeContainer.encode(buildId, forKey: .buildId)
        }
    }
}