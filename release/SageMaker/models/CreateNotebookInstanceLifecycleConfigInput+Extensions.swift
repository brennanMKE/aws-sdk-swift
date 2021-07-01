// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateNotebookInstanceLifecycleConfigInputHeadersMiddleware: Middleware {
    public let id: String = "CreateNotebookInstanceLifecycleConfigInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>
    public typealias MOutput = OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotebookInstanceLifecycleConfigOutputError>
}

public struct CreateNotebookInstanceLifecycleConfigInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateNotebookInstanceLifecycleConfigInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>
    public typealias MOutput = OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotebookInstanceLifecycleConfigOutputError>
}

public struct CreateNotebookInstanceLifecycleConfigInputBodyMiddleware: Middleware {
    public let id: String = "CreateNotebookInstanceLifecycleConfigInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateNotebookInstanceLifecycleConfigInput>
    public typealias MOutput = OperationOutput<CreateNotebookInstanceLifecycleConfigOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateNotebookInstanceLifecycleConfigOutputError>
}

extension CreateNotebookInstanceLifecycleConfigInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case notebookInstanceLifecycleConfigName = "NotebookInstanceLifecycleConfigName"
        case onCreate = "OnCreate"
        case onStart = "OnStart"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let notebookInstanceLifecycleConfigName = notebookInstanceLifecycleConfigName {
            try encodeContainer.encode(notebookInstanceLifecycleConfigName, forKey: .notebookInstanceLifecycleConfigName)
        }
        if let onCreate = onCreate {
            var onCreateContainer = encodeContainer.nestedUnkeyedContainer(forKey: .onCreate)
            for notebookinstancelifecycleconfiglist0 in onCreate {
                try onCreateContainer.encode(notebookinstancelifecycleconfiglist0)
            }
        }
        if let onStart = onStart {
            var onStartContainer = encodeContainer.nestedUnkeyedContainer(forKey: .onStart)
            for notebookinstancelifecycleconfiglist0 in onStart {
                try onStartContainer.encode(notebookinstancelifecycleconfiglist0)
            }
        }
    }
}