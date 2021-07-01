// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateGovCloudAccountInputHeadersMiddleware: Middleware {
    public let id: String = "CreateGovCloudAccountInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGovCloudAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateGovCloudAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateGovCloudAccountInput>
    public typealias MOutput = OperationOutput<CreateGovCloudAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateGovCloudAccountOutputError>
}

public struct CreateGovCloudAccountInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateGovCloudAccountInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGovCloudAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateGovCloudAccountOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateGovCloudAccountInput>
    public typealias MOutput = OperationOutput<CreateGovCloudAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateGovCloudAccountOutputError>
}

public struct CreateGovCloudAccountInputBodyMiddleware: Middleware {
    public let id: String = "CreateGovCloudAccountInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateGovCloudAccountInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateGovCloudAccountOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateGovCloudAccountInput>
    public typealias MOutput = OperationOutput<CreateGovCloudAccountOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateGovCloudAccountOutputError>
}

extension CreateGovCloudAccountInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accountName = "AccountName"
        case email = "Email"
        case iamUserAccessToBilling = "IamUserAccessToBilling"
        case roleName = "RoleName"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accountName = accountName {
            try encodeContainer.encode(accountName, forKey: .accountName)
        }
        if let email = email {
            try encodeContainer.encode(email, forKey: .email)
        }
        if let iamUserAccessToBilling = iamUserAccessToBilling {
            try encodeContainer.encode(iamUserAccessToBilling.rawValue, forKey: .iamUserAccessToBilling)
        }
        if let roleName = roleName {
            try encodeContainer.encode(roleName, forKey: .roleName)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
    }
}