// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateClientCertificateInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateClientCertificateInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateClientCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateClientCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateClientCertificateInput>
    public typealias MOutput = OperationOutput<UpdateClientCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateClientCertificateOutputError>
}

public struct UpdateClientCertificateInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateClientCertificateInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateClientCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateClientCertificateOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateClientCertificateInput>
    public typealias MOutput = OperationOutput<UpdateClientCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateClientCertificateOutputError>
}

public struct UpdateClientCertificateInputBodyMiddleware: Middleware {
    public let id: String = "UpdateClientCertificateInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateClientCertificateInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateClientCertificateOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateClientCertificateInput>
    public typealias MOutput = OperationOutput<UpdateClientCertificateOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateClientCertificateOutputError>
}

extension UpdateClientCertificateInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case patchOperations
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let patchOperations = patchOperations {
            var patchOperationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .patchOperations)
            for listofpatchoperation0 in patchOperations {
                try patchOperationsContainer.encode(listofpatchoperation0)
            }
        }
    }
}