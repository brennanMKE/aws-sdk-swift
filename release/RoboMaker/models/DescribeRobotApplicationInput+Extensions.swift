// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeRobotApplicationInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeRobotApplicationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRobotApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRobotApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRobotApplicationInput>
    public typealias MOutput = OperationOutput<DescribeRobotApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRobotApplicationOutputError>
}

public struct DescribeRobotApplicationInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeRobotApplicationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRobotApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRobotApplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeRobotApplicationInput>
    public typealias MOutput = OperationOutput<DescribeRobotApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRobotApplicationOutputError>
}

public struct DescribeRobotApplicationInputBodyMiddleware: Middleware {
    public let id: String = "DescribeRobotApplicationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeRobotApplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeRobotApplicationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeRobotApplicationInput>
    public typealias MOutput = OperationOutput<DescribeRobotApplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeRobotApplicationOutputError>
}

extension DescribeRobotApplicationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case application
        case applicationVersion
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let application = application {
            try encodeContainer.encode(application, forKey: .application)
        }
        if let applicationVersion = applicationVersion {
            try encodeContainer.encode(applicationVersion, forKey: .applicationVersion)
        }
    }
}