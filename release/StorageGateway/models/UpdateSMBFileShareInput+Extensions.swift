// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UpdateSMBFileShareInputHeadersMiddleware: Middleware {
    public let id: String = "UpdateSMBFileShareInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSMBFileShareInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSMBFileShareOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSMBFileShareInput>
    public typealias MOutput = OperationOutput<UpdateSMBFileShareOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSMBFileShareOutputError>
}

public struct UpdateSMBFileShareInputQueryItemMiddleware: Middleware {
    public let id: String = "UpdateSMBFileShareInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSMBFileShareInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSMBFileShareOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<UpdateSMBFileShareInput>
    public typealias MOutput = OperationOutput<UpdateSMBFileShareOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSMBFileShareOutputError>
}

public struct UpdateSMBFileShareInputBodyMiddleware: Middleware {
    public let id: String = "UpdateSMBFileShareInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<UpdateSMBFileShareInput>,
                  next: H) -> Swift.Result<OperationOutput<UpdateSMBFileShareOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<UpdateSMBFileShareInput>
    public typealias MOutput = OperationOutput<UpdateSMBFileShareOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<UpdateSMBFileShareOutputError>
}

extension UpdateSMBFileShareInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessBasedEnumeration = "AccessBasedEnumeration"
        case adminUserList = "AdminUserList"
        case auditDestinationARN = "AuditDestinationARN"
        case cacheAttributes = "CacheAttributes"
        case caseSensitivity = "CaseSensitivity"
        case defaultStorageClass = "DefaultStorageClass"
        case fileShareARN = "FileShareARN"
        case fileShareName = "FileShareName"
        case guessMIMETypeEnabled = "GuessMIMETypeEnabled"
        case invalidUserList = "InvalidUserList"
        case kMSEncrypted = "KMSEncrypted"
        case kMSKey = "KMSKey"
        case notificationPolicy = "NotificationPolicy"
        case objectACL = "ObjectACL"
        case readOnly = "ReadOnly"
        case requesterPays = "RequesterPays"
        case sMBACLEnabled = "SMBACLEnabled"
        case validUserList = "ValidUserList"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessBasedEnumeration = accessBasedEnumeration {
            try encodeContainer.encode(accessBasedEnumeration, forKey: .accessBasedEnumeration)
        }
        if let adminUserList = adminUserList {
            var adminUserListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .adminUserList)
            for userlist0 in adminUserList {
                try adminUserListContainer.encode(userlist0)
            }
        }
        if let auditDestinationARN = auditDestinationARN {
            try encodeContainer.encode(auditDestinationARN, forKey: .auditDestinationARN)
        }
        if let cacheAttributes = cacheAttributes {
            try encodeContainer.encode(cacheAttributes, forKey: .cacheAttributes)
        }
        if let caseSensitivity = caseSensitivity {
            try encodeContainer.encode(caseSensitivity.rawValue, forKey: .caseSensitivity)
        }
        if let defaultStorageClass = defaultStorageClass {
            try encodeContainer.encode(defaultStorageClass, forKey: .defaultStorageClass)
        }
        if let fileShareARN = fileShareARN {
            try encodeContainer.encode(fileShareARN, forKey: .fileShareARN)
        }
        if let fileShareName = fileShareName {
            try encodeContainer.encode(fileShareName, forKey: .fileShareName)
        }
        if let guessMIMETypeEnabled = guessMIMETypeEnabled {
            try encodeContainer.encode(guessMIMETypeEnabled, forKey: .guessMIMETypeEnabled)
        }
        if let invalidUserList = invalidUserList {
            var invalidUserListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .invalidUserList)
            for userlist0 in invalidUserList {
                try invalidUserListContainer.encode(userlist0)
            }
        }
        if let kMSEncrypted = kMSEncrypted {
            try encodeContainer.encode(kMSEncrypted, forKey: .kMSEncrypted)
        }
        if let kMSKey = kMSKey {
            try encodeContainer.encode(kMSKey, forKey: .kMSKey)
        }
        if let notificationPolicy = notificationPolicy {
            try encodeContainer.encode(notificationPolicy, forKey: .notificationPolicy)
        }
        if let objectACL = objectACL {
            try encodeContainer.encode(objectACL.rawValue, forKey: .objectACL)
        }
        if let readOnly = readOnly {
            try encodeContainer.encode(readOnly, forKey: .readOnly)
        }
        if let requesterPays = requesterPays {
            try encodeContainer.encode(requesterPays, forKey: .requesterPays)
        }
        if let sMBACLEnabled = sMBACLEnabled {
            try encodeContainer.encode(sMBACLEnabled, forKey: .sMBACLEnabled)
        }
        if let validUserList = validUserList {
            var validUserListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .validUserList)
            for userlist0 in validUserList {
                try validUserListContainer.encode(userlist0)
            }
        }
    }
}