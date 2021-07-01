// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteUploadInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteUploadInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUploadInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUploadOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUploadInput>
    public typealias MOutput = OperationOutput<DeleteUploadOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUploadOutputError>
}

public struct DeleteUploadInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteUploadInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUploadInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUploadOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteUploadInput>
    public typealias MOutput = OperationOutput<DeleteUploadOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUploadOutputError>
}

public struct DeleteUploadInputBodyMiddleware: Middleware {
    public let id: String = "DeleteUploadInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteUploadInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteUploadOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteUploadInput>
    public typealias MOutput = OperationOutput<DeleteUploadOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteUploadOutputError>
}

extension DeleteUploadInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
    }
}