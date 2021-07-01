// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteDatasetInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteDatasetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDatasetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDatasetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDatasetInput>
    public typealias MOutput = OperationOutput<DeleteDatasetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDatasetOutputError>
}

public struct DeleteDatasetInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteDatasetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDatasetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDatasetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteDatasetInput>
    public typealias MOutput = OperationOutput<DeleteDatasetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDatasetOutputError>
}

public struct DeleteDatasetInputBodyMiddleware: Middleware {
    public let id: String = "DeleteDatasetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteDatasetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteDatasetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteDatasetInput>
    public typealias MOutput = OperationOutput<DeleteDatasetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteDatasetOutputError>
}

extension DeleteDatasetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case datasetArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let datasetArn = datasetArn {
            try encodeContainer.encode(datasetArn, forKey: .datasetArn)
        }
    }
}