// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateWebsiteCertificateAuthorityInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteCertificateAuthorityInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteCertificateAuthorityOutputError>
}

public struct DisassociateWebsiteCertificateAuthorityInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteCertificateAuthorityInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteCertificateAuthorityOutputError>
}

public struct DisassociateWebsiteCertificateAuthorityInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateWebsiteCertificateAuthorityInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DisassociateWebsiteCertificateAuthorityInput>
    public typealias MOutput = OperationOutput<DisassociateWebsiteCertificateAuthorityOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateWebsiteCertificateAuthorityOutputError>
}

extension DisassociateWebsiteCertificateAuthorityInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case fleetArn = "FleetArn"
        case websiteCaId = "WebsiteCaId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let fleetArn = fleetArn {
            try encodeContainer.encode(fleetArn, forKey: .fleetArn)
        }
        if let websiteCaId = websiteCaId {
            try encodeContainer.encode(websiteCaId, forKey: .websiteCaId)
        }
    }
}