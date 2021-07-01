// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetCertificateAuthorityCsrInputHeadersMiddleware: Middleware {
    public let id: String = "GetCertificateAuthorityCsrInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCertificateAuthorityCsrInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCertificateAuthorityCsrOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCertificateAuthorityCsrInput>
    public typealias MOutput = OperationOutput<GetCertificateAuthorityCsrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCertificateAuthorityCsrOutputError>
}

public struct GetCertificateAuthorityCsrInputQueryItemMiddleware: Middleware {
    public let id: String = "GetCertificateAuthorityCsrInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCertificateAuthorityCsrInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCertificateAuthorityCsrOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetCertificateAuthorityCsrInput>
    public typealias MOutput = OperationOutput<GetCertificateAuthorityCsrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCertificateAuthorityCsrOutputError>
}

public struct GetCertificateAuthorityCsrInputBodyMiddleware: Middleware {
    public let id: String = "GetCertificateAuthorityCsrInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetCertificateAuthorityCsrInput>,
                  next: H) -> Swift.Result<OperationOutput<GetCertificateAuthorityCsrOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetCertificateAuthorityCsrInput>
    public typealias MOutput = OperationOutput<GetCertificateAuthorityCsrOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetCertificateAuthorityCsrOutputError>
}

extension GetCertificateAuthorityCsrInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificateAuthorityArn = "CertificateAuthorityArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificateAuthorityArn = certificateAuthorityArn {
            try encodeContainer.encode(certificateAuthorityArn, forKey: .certificateAuthorityArn)
        }
    }
}