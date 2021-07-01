// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeTrustedAdvisorChecksInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeTrustedAdvisorChecksInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTrustedAdvisorChecksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTrustedAdvisorChecksInput>
    public typealias MOutput = OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTrustedAdvisorChecksOutputError>
}

public struct DescribeTrustedAdvisorChecksInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeTrustedAdvisorChecksInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTrustedAdvisorChecksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeTrustedAdvisorChecksInput>
    public typealias MOutput = OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTrustedAdvisorChecksOutputError>
}

public struct DescribeTrustedAdvisorChecksInputBodyMiddleware: Middleware {
    public let id: String = "DescribeTrustedAdvisorChecksInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeTrustedAdvisorChecksInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeTrustedAdvisorChecksInput>
    public typealias MOutput = OperationOutput<DescribeTrustedAdvisorChecksOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeTrustedAdvisorChecksOutputError>
}

extension DescribeTrustedAdvisorChecksInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case language
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let language = language {
            try encodeContainer.encode(language, forKey: .language)
        }
    }
}