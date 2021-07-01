// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateScriptInputHeadersMiddleware: Middleware {
    public let id: String = "CreateScriptInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateScriptInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateScriptOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateScriptInput>
    public typealias MOutput = OperationOutput<CreateScriptOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateScriptOutputError>
}

public struct CreateScriptInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateScriptInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateScriptInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateScriptOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateScriptInput>
    public typealias MOutput = OperationOutput<CreateScriptOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateScriptOutputError>
}

public struct CreateScriptInputBodyMiddleware: Middleware {
    public let id: String = "CreateScriptInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateScriptInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateScriptOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateScriptInput>
    public typealias MOutput = OperationOutput<CreateScriptOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateScriptOutputError>
}

extension CreateScriptInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case storageLocation = "StorageLocation"
        case tags = "Tags"
        case version = "Version"
        case zipFile = "ZipFile"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let storageLocation = storageLocation {
            try encodeContainer.encode(storageLocation, forKey: .storageLocation)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let version = version {
            try encodeContainer.encode(version, forKey: .version)
        }
        if let zipFile = zipFile {
            try encodeContainer.encode(zipFile.base64EncodedString(), forKey: .zipFile)
        }
    }
}