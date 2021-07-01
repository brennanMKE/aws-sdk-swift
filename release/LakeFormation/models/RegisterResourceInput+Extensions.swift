// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterResourceInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterResourceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterResourceInput>
    public typealias MOutput = OperationOutput<RegisterResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterResourceOutputError>
}

public struct RegisterResourceInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterResourceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterResourceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterResourceInput>
    public typealias MOutput = OperationOutput<RegisterResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterResourceOutputError>
}

public struct RegisterResourceInputBodyMiddleware: Middleware {
    public let id: String = "RegisterResourceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterResourceInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterResourceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterResourceInput>
    public typealias MOutput = OperationOutput<RegisterResourceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterResourceOutputError>
}

extension RegisterResourceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case roleArn = "RoleArn"
        case useServiceLinkedRole = "UseServiceLinkedRole"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let resourceArn = resourceArn {
            try encodeContainer.encode(resourceArn, forKey: .resourceArn)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let useServiceLinkedRole = useServiceLinkedRole {
            try encodeContainer.encode(useServiceLinkedRole, forKey: .useServiceLinkedRole)
        }
    }
}