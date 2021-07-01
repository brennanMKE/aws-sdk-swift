// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateQualificationTypeInputHeadersMiddleware: Middleware {
    public let id: String = "CreateQualificationTypeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateQualificationTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateQualificationTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateQualificationTypeInput>
    public typealias MOutput = OperationOutput<CreateQualificationTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateQualificationTypeOutputError>
}

public struct CreateQualificationTypeInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateQualificationTypeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateQualificationTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateQualificationTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateQualificationTypeInput>
    public typealias MOutput = OperationOutput<CreateQualificationTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateQualificationTypeOutputError>
}

public struct CreateQualificationTypeInputBodyMiddleware: Middleware {
    public let id: String = "CreateQualificationTypeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateQualificationTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateQualificationTypeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateQualificationTypeInput>
    public typealias MOutput = OperationOutput<CreateQualificationTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateQualificationTypeOutputError>
}

extension CreateQualificationTypeInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case answerKey = "AnswerKey"
        case autoGranted = "AutoGranted"
        case autoGrantedValue = "AutoGrantedValue"
        case description = "Description"
        case keywords = "Keywords"
        case name = "Name"
        case qualificationTypeStatus = "QualificationTypeStatus"
        case retryDelayInSeconds = "RetryDelayInSeconds"
        case test = "Test"
        case testDurationInSeconds = "TestDurationInSeconds"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let answerKey = answerKey {
            try encodeContainer.encode(answerKey, forKey: .answerKey)
        }
        if let autoGranted = autoGranted {
            try encodeContainer.encode(autoGranted, forKey: .autoGranted)
        }
        if let autoGrantedValue = autoGrantedValue {
            try encodeContainer.encode(autoGrantedValue, forKey: .autoGrantedValue)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let keywords = keywords {
            try encodeContainer.encode(keywords, forKey: .keywords)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let qualificationTypeStatus = qualificationTypeStatus {
            try encodeContainer.encode(qualificationTypeStatus.rawValue, forKey: .qualificationTypeStatus)
        }
        if let retryDelayInSeconds = retryDelayInSeconds {
            try encodeContainer.encode(retryDelayInSeconds, forKey: .retryDelayInSeconds)
        }
        if let test = test {
            try encodeContainer.encode(test, forKey: .test)
        }
        if let testDurationInSeconds = testDurationInSeconds {
            try encodeContainer.encode(testDurationInSeconds, forKey: .testDurationInSeconds)
        }
    }
}