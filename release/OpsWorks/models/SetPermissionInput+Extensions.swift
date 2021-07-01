// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SetPermissionInputHeadersMiddleware: Middleware {
    public let id: String = "SetPermissionInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<SetPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetPermissionInput>
    public typealias MOutput = OperationOutput<SetPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetPermissionOutputError>
}

public struct SetPermissionInputQueryItemMiddleware: Middleware {
    public let id: String = "SetPermissionInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<SetPermissionOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SetPermissionInput>
    public typealias MOutput = OperationOutput<SetPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetPermissionOutputError>
}

public struct SetPermissionInputBodyMiddleware: Middleware {
    public let id: String = "SetPermissionInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SetPermissionInput>,
                  next: H) -> Swift.Result<OperationOutput<SetPermissionOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SetPermissionInput>
    public typealias MOutput = OperationOutput<SetPermissionOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SetPermissionOutputError>
}

extension SetPermissionInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowSsh = "AllowSsh"
        case allowSudo = "AllowSudo"
        case iamUserArn = "IamUserArn"
        case level = "Level"
        case stackId = "StackId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allowSsh = allowSsh {
            try encodeContainer.encode(allowSsh, forKey: .allowSsh)
        }
        if let allowSudo = allowSudo {
            try encodeContainer.encode(allowSudo, forKey: .allowSudo)
        }
        if let iamUserArn = iamUserArn {
            try encodeContainer.encode(iamUserArn, forKey: .iamUserArn)
        }
        if let level = level {
            try encodeContainer.encode(level, forKey: .level)
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
    }
}