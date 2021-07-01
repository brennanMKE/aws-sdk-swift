// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateFolderInputHeadersMiddleware: Middleware {
    public let id: String = "CreateFolderInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFolderInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFolderOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let authenticationToken = input.operationInput.authenticationToken {
            input.builder.withHeader(name: "Authentication", value: String(authenticationToken))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFolderInput>
    public typealias MOutput = OperationOutput<CreateFolderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFolderOutputError>
}

public struct CreateFolderInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateFolderInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFolderInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFolderOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateFolderInput>
    public typealias MOutput = OperationOutput<CreateFolderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFolderOutputError>
}

public struct CreateFolderInputBodyMiddleware: Middleware {
    public let id: String = "CreateFolderInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateFolderInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateFolderOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateFolderInput>
    public typealias MOutput = OperationOutput<CreateFolderOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateFolderOutputError>
}

extension CreateFolderInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case parentFolderId = "ParentFolderId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let parentFolderId = parentFolderId {
            try encodeContainer.encode(parentFolderId, forKey: .parentFolderId)
        }
    }
}