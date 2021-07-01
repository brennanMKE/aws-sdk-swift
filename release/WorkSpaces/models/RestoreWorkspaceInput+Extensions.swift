// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RestoreWorkspaceInputHeadersMiddleware: Middleware {
    public let id: String = "RestoreWorkspaceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreWorkspaceInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreWorkspaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreWorkspaceInput>
    public typealias MOutput = OperationOutput<RestoreWorkspaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreWorkspaceOutputError>
}

public struct RestoreWorkspaceInputQueryItemMiddleware: Middleware {
    public let id: String = "RestoreWorkspaceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreWorkspaceInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreWorkspaceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RestoreWorkspaceInput>
    public typealias MOutput = OperationOutput<RestoreWorkspaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreWorkspaceOutputError>
}

public struct RestoreWorkspaceInputBodyMiddleware: Middleware {
    public let id: String = "RestoreWorkspaceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RestoreWorkspaceInput>,
                  next: H) -> Swift.Result<OperationOutput<RestoreWorkspaceOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RestoreWorkspaceInput>
    public typealias MOutput = OperationOutput<RestoreWorkspaceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RestoreWorkspaceOutputError>
}

extension RestoreWorkspaceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case workspaceId = "WorkspaceId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let workspaceId = workspaceId {
            try encodeContainer.encode(workspaceId, forKey: .workspaceId)
        }
    }
}