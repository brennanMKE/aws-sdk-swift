// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateMedicalVocabularyInputHeadersMiddleware: Middleware {
    public let id: String = "CreateMedicalVocabularyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMedicalVocabularyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<CreateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMedicalVocabularyOutputError>
}

public struct CreateMedicalVocabularyInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateMedicalVocabularyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMedicalVocabularyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<CreateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMedicalVocabularyOutputError>
}

public struct CreateMedicalVocabularyInputBodyMiddleware: Middleware {
    public let id: String = "CreateMedicalVocabularyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMedicalVocabularyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<CreateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMedicalVocabularyOutputError>
}

extension CreateMedicalVocabularyInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case languageCode = "LanguageCode"
        case vocabularyFileUri = "VocabularyFileUri"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let languageCode = languageCode {
            try encodeContainer.encode(languageCode.rawValue, forKey: .languageCode)
        }
        if let vocabularyFileUri = vocabularyFileUri {
            try encodeContainer.encode(vocabularyFileUri, forKey: .vocabularyFileUri)
        }
    }
}