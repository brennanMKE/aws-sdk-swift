// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct AssociateDRTRoleInputHeadersMiddleware: Middleware {
    public let id: String = "AssociateDRTRoleInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateDRTRoleInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateDRTRoleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateDRTRoleInput>
    public typealias MOutput = OperationOutput<AssociateDRTRoleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateDRTRoleOutputError>
}

public struct AssociateDRTRoleInputQueryItemMiddleware: Middleware {
    public let id: String = "AssociateDRTRoleInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateDRTRoleInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateDRTRoleOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<AssociateDRTRoleInput>
    public typealias MOutput = OperationOutput<AssociateDRTRoleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateDRTRoleOutputError>
}

public struct AssociateDRTRoleInputBodyMiddleware: Middleware {
    public let id: String = "AssociateDRTRoleInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<AssociateDRTRoleInput>,
                  next: H) -> Swift.Result<OperationOutput<AssociateDRTRoleOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<AssociateDRTRoleInput>
    public typealias MOutput = OperationOutput<AssociateDRTRoleOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<AssociateDRTRoleOutputError>
}

extension AssociateDRTRoleInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case roleArn = "RoleArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }
}