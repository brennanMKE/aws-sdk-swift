// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTrailInputHeadersMiddleware: Middleware {
    public let id: String = "CreateTrailInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrailInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrailOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTrailInput>
    public typealias MOutput = OperationOutput<CreateTrailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrailOutputError>
}

public struct CreateTrailInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateTrailInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrailInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrailOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTrailInput>
    public typealias MOutput = OperationOutput<CreateTrailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrailOutputError>
}

public struct CreateTrailInputBodyMiddleware: Middleware {
    public let id: String = "CreateTrailInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTrailInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTrailOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateTrailInput>
    public typealias MOutput = OperationOutput<CreateTrailOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTrailOutputError>
}

extension CreateTrailInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cloudWatchLogsLogGroupArn = "CloudWatchLogsLogGroupArn"
        case cloudWatchLogsRoleArn = "CloudWatchLogsRoleArn"
        case enableLogFileValidation = "EnableLogFileValidation"
        case includeGlobalServiceEvents = "IncludeGlobalServiceEvents"
        case isMultiRegionTrail = "IsMultiRegionTrail"
        case isOrganizationTrail = "IsOrganizationTrail"
        case kmsKeyId = "KmsKeyId"
        case name = "Name"
        case s3BucketName = "S3BucketName"
        case s3KeyPrefix = "S3KeyPrefix"
        case snsTopicName = "SnsTopicName"
        case tagsList = "TagsList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cloudWatchLogsLogGroupArn = cloudWatchLogsLogGroupArn {
            try encodeContainer.encode(cloudWatchLogsLogGroupArn, forKey: .cloudWatchLogsLogGroupArn)
        }
        if let cloudWatchLogsRoleArn = cloudWatchLogsRoleArn {
            try encodeContainer.encode(cloudWatchLogsRoleArn, forKey: .cloudWatchLogsRoleArn)
        }
        if let enableLogFileValidation = enableLogFileValidation {
            try encodeContainer.encode(enableLogFileValidation, forKey: .enableLogFileValidation)
        }
        if let includeGlobalServiceEvents = includeGlobalServiceEvents {
            try encodeContainer.encode(includeGlobalServiceEvents, forKey: .includeGlobalServiceEvents)
        }
        if let isMultiRegionTrail = isMultiRegionTrail {
            try encodeContainer.encode(isMultiRegionTrail, forKey: .isMultiRegionTrail)
        }
        if let isOrganizationTrail = isOrganizationTrail {
            try encodeContainer.encode(isOrganizationTrail, forKey: .isOrganizationTrail)
        }
        if let kmsKeyId = kmsKeyId {
            try encodeContainer.encode(kmsKeyId, forKey: .kmsKeyId)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let s3BucketName = s3BucketName {
            try encodeContainer.encode(s3BucketName, forKey: .s3BucketName)
        }
        if let s3KeyPrefix = s3KeyPrefix {
            try encodeContainer.encode(s3KeyPrefix, forKey: .s3KeyPrefix)
        }
        if let snsTopicName = snsTopicName {
            try encodeContainer.encode(snsTopicName, forKey: .snsTopicName)
        }
        if let tagsList = tagsList {
            var tagsListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagsList)
            for tagslist0 in tagsList {
                try tagsListContainer.encode(tagslist0)
            }
        }
    }
}