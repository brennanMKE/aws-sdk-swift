// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct TestCustomDataIdentifierInputHeadersMiddleware: Middleware {
    public let id: String = "TestCustomDataIdentifierInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestCustomDataIdentifierInput>,
                  next: H) -> Swift.Result<OperationOutput<TestCustomDataIdentifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestCustomDataIdentifierInput>
    public typealias MOutput = OperationOutput<TestCustomDataIdentifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestCustomDataIdentifierOutputError>
}

public struct TestCustomDataIdentifierInputQueryItemMiddleware: Middleware {
    public let id: String = "TestCustomDataIdentifierInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestCustomDataIdentifierInput>,
                  next: H) -> Swift.Result<OperationOutput<TestCustomDataIdentifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<TestCustomDataIdentifierInput>
    public typealias MOutput = OperationOutput<TestCustomDataIdentifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestCustomDataIdentifierOutputError>
}

public struct TestCustomDataIdentifierInputBodyMiddleware: Middleware {
    public let id: String = "TestCustomDataIdentifierInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<TestCustomDataIdentifierInput>,
                  next: H) -> Swift.Result<OperationOutput<TestCustomDataIdentifierOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<TestCustomDataIdentifierInput>
    public typealias MOutput = OperationOutput<TestCustomDataIdentifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<TestCustomDataIdentifierOutputError>
}

extension TestCustomDataIdentifierInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ignoreWords = "ignoreWords"
        case keywords = "keywords"
        case maximumMatchDistance = "maximumMatchDistance"
        case regex = "regex"
        case sampleText = "sampleText"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ignoreWords = ignoreWords {
            var ignoreWordsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ignoreWords)
            for __listof__string0 in ignoreWords {
                try ignoreWordsContainer.encode(__listof__string0)
            }
        }
        if let keywords = keywords {
            var keywordsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .keywords)
            for __listof__string0 in keywords {
                try keywordsContainer.encode(__listof__string0)
            }
        }
        if maximumMatchDistance != 0 {
            try encodeContainer.encode(maximumMatchDistance, forKey: .maximumMatchDistance)
        }
        if let regex = regex {
            try encodeContainer.encode(regex, forKey: .regex)
        }
        if let sampleText = sampleText {
            try encodeContainer.encode(sampleText, forKey: .sampleText)
        }
    }
}