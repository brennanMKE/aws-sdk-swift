// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetAssociatedEnclaveCertificateIamRolesInputHeadersMiddleware: Middleware {
    public let id: String = "GetAssociatedEnclaveCertificateIamRolesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>
    public typealias MOutput = OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssociatedEnclaveCertificateIamRolesOutputError>
}

public struct GetAssociatedEnclaveCertificateIamRolesInputQueryItemMiddleware: Middleware {
    public let id: String = "GetAssociatedEnclaveCertificateIamRolesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>
    public typealias MOutput = OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssociatedEnclaveCertificateIamRolesOutputError>
}

public struct GetAssociatedEnclaveCertificateIamRolesInputBodyMiddleware: Middleware {
    public let id: String = "GetAssociatedEnclaveCertificateIamRolesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>,
                  next: H) -> Swift.Result<OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetAssociatedEnclaveCertificateIamRolesInput>
    public typealias MOutput = OperationOutput<GetAssociatedEnclaveCertificateIamRolesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetAssociatedEnclaveCertificateIamRolesOutputError>
}

extension GetAssociatedEnclaveCertificateIamRolesInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let certificateArn = certificateArn {
            try container.encode(certificateArn, forKey: Key("CertificateArn"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        try container.encode("GetAssociatedEnclaveCertificateIamRoles", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}