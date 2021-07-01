// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateClassificationJobInputHeadersMiddleware: Middleware {
    public let id: String = "CreateClassificationJobInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassificationJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassificationJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateClassificationJobInput>
    public typealias MOutput = OperationOutput<CreateClassificationJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassificationJobOutputError>
}

public struct CreateClassificationJobInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateClassificationJobInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassificationJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassificationJobOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateClassificationJobInput>
    public typealias MOutput = OperationOutput<CreateClassificationJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassificationJobOutputError>
}

public struct CreateClassificationJobInputBodyMiddleware: Middleware {
    public let id: String = "CreateClassificationJobInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassificationJobInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassificationJobOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateClassificationJobInput>
    public typealias MOutput = OperationOutput<CreateClassificationJobOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassificationJobOutputError>
}

extension CreateClassificationJobInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case customDataIdentifierIds = "customDataIdentifierIds"
        case description = "description"
        case initialRun = "initialRun"
        case jobType = "jobType"
        case name = "name"
        case s3JobDefinition = "s3JobDefinition"
        case samplingPercentage = "samplingPercentage"
        case scheduleFrequency = "scheduleFrequency"
        case tags = "tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let customDataIdentifierIds = customDataIdentifierIds {
            var customDataIdentifierIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .customDataIdentifierIds)
            for __listof__string0 in customDataIdentifierIds {
                try customDataIdentifierIdsContainer.encode(__listof__string0)
            }
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if initialRun != false {
            try encodeContainer.encode(initialRun, forKey: .initialRun)
        }
        if let jobType = jobType {
            try encodeContainer.encode(jobType.rawValue, forKey: .jobType)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let s3JobDefinition = s3JobDefinition {
            try encodeContainer.encode(s3JobDefinition, forKey: .s3JobDefinition)
        }
        if samplingPercentage != 0 {
            try encodeContainer.encode(samplingPercentage, forKey: .samplingPercentage)
        }
        if let scheduleFrequency = scheduleFrequency {
            try encodeContainer.encode(scheduleFrequency, forKey: .scheduleFrequency)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }
}