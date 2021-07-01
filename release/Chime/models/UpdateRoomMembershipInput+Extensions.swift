// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateRoomMembershipInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateRoomMembershipInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRoomMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRoomMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRoomMembershipInput>
    public typealias MOutput = OperationOutput<UpdateRoomMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRoomMembershipOutputError>
}

public struct UpdateRoomMembershipInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateRoomMembershipInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRoomMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRoomMembershipOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateRoomMembershipInput>
    public typealias MOutput = OperationOutput<UpdateRoomMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRoomMembershipOutputError>
}

public struct UpdateRoomMembershipInputBodyMiddleware: Middleware {
    public let id: String = "UpdateRoomMembershipInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateRoomMembershipInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateRoomMembershipOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateRoomMembershipInput>
    public typealias MOutput = OperationOutput<UpdateRoomMembershipOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateRoomMembershipOutputError>
}

extension UpdateRoomMembershipInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case role = "Role"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let role = role {
            try encodeContainer.encode(role.rawValue, forKey: .role)
        }
    }
}