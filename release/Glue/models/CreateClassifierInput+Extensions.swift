// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateClassifierInputHeadersMiddleware: Middleware {
    public let id: String = "CreateClassifierInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateClassifierInput>
    public typealias MOutput = OperationOutput<CreateClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassifierOutputError>
}

public struct CreateClassifierInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateClassifierInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassifierOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateClassifierInput>
    public typealias MOutput = OperationOutput<CreateClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassifierOutputError>
}

public struct CreateClassifierInputBodyMiddleware: Middleware {
    public let id: String = "CreateClassifierInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateClassifierInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateClassifierOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateClassifierInput>
    public typealias MOutput = OperationOutput<CreateClassifierOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateClassifierOutputError>
}

extension CreateClassifierInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case csvClassifier = "CsvClassifier"
        case grokClassifier = "GrokClassifier"
        case jsonClassifier = "JsonClassifier"
        case xMLClassifier = "XMLClassifier"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let csvClassifier = csvClassifier {
            try encodeContainer.encode(csvClassifier, forKey: .csvClassifier)
        }
        if let grokClassifier = grokClassifier {
            try encodeContainer.encode(grokClassifier, forKey: .grokClassifier)
        }
        if let jsonClassifier = jsonClassifier {
            try encodeContainer.encode(jsonClassifier, forKey: .jsonClassifier)
        }
        if let xMLClassifier = xMLClassifier {
            try encodeContainer.encode(xMLClassifier, forKey: .xMLClassifier)
        }
    }
}