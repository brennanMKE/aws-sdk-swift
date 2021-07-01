// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateMedicalVocabularyInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateMedicalVocabularyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateMedicalVocabularyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<UpdateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateMedicalVocabularyOutputError>
}

public struct UpdateMedicalVocabularyInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateMedicalVocabularyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateMedicalVocabularyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<UpdateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateMedicalVocabularyOutputError>
}

public struct UpdateMedicalVocabularyInputBodyMiddleware: Middleware {
    public let id: String = "UpdateMedicalVocabularyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateMedicalVocabularyInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateMedicalVocabularyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateMedicalVocabularyInput>
    public typealias MOutput = OperationOutput<UpdateMedicalVocabularyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateMedicalVocabularyOutputError>
}

extension UpdateMedicalVocabularyInput: Encodable, Reflection {
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