// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeAppInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeAppInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppInput>
    public typealias MOutput = OperationOutput<DescribeAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppOutputError>
}

public struct DescribeAppInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeAppInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAppInput>
    public typealias MOutput = OperationOutput<DescribeAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppOutputError>
}

public struct DescribeAppInputBodyMiddleware: Middleware {
    public let id: String = "DescribeAppInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAppInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAppOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeAppInput>
    public typealias MOutput = OperationOutput<DescribeAppOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAppOutputError>
}

extension DescribeAppInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case appName = "AppName"
        case appType = "AppType"
        case domainId = "DomainId"
        case userProfileName = "UserProfileName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let appName = appName {
            try encodeContainer.encode(appName, forKey: .appName)
        }
        if let appType = appType {
            try encodeContainer.encode(appType.rawValue, forKey: .appType)
        }
        if let domainId = domainId {
            try encodeContainer.encode(domainId, forKey: .domainId)
        }
        if let userProfileName = userProfileName {
            try encodeContainer.encode(userProfileName, forKey: .userProfileName)
        }
    }
}