// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ImportImageInputHeadersMiddleware: Middleware {
    public let id: String = "ImportImageInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ImportImageInput>,
                  next: H) -> Swift.Result<OperationOutput<ImportImageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ImportImageInput>
    public typealias MOutput = OperationOutput<ImportImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ImportImageOutputError>
}

public struct ImportImageInputQueryItemMiddleware: Middleware {
    public let id: String = "ImportImageInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ImportImageInput>,
                  next: H) -> Swift.Result<OperationOutput<ImportImageOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ImportImageInput>
    public typealias MOutput = OperationOutput<ImportImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ImportImageOutputError>
}

public struct ImportImageInputBodyMiddleware: Middleware {
    public let id: String = "ImportImageInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ImportImageInput>,
                  next: H) -> Swift.Result<OperationOutput<ImportImageOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ImportImageInput>
    public typealias MOutput = OperationOutput<ImportImageOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ImportImageOutputError>
}

extension ImportImageInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let architecture = architecture {
            try container.encode(architecture, forKey: Key("Architecture"))
        }
        if let clientData = clientData {
            try container.encode(clientData, forKey: Key("ClientData"))
        }
        if let clientToken = clientToken {
            try container.encode(clientToken, forKey: Key("ClientToken"))
        }
        if let description = description {
            try container.encode(description, forKey: Key("Description"))
        }
        if let diskContainers = diskContainers {
            if !diskContainers.isEmpty {
                for (index0, imagediskcontainer0) in diskContainers.enumerated() {
                    var diskContainersContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("DiskContainer.\(index0.advanced(by: 1))"))
                    try diskContainersContainer0.encode(imagediskcontainer0, forKey: Key(""))
                }
            }
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if encrypted != false {
            try container.encode(encrypted, forKey: Key("Encrypted"))
        }
        if let hypervisor = hypervisor {
            try container.encode(hypervisor, forKey: Key("Hypervisor"))
        }
        if let kmsKeyId = kmsKeyId {
            try container.encode(kmsKeyId, forKey: Key("KmsKeyId"))
        }
        if let licenseSpecifications = licenseSpecifications {
            if !licenseSpecifications.isEmpty {
                for (index0, importimagelicenseconfigurationrequest0) in licenseSpecifications.enumerated() {
                    var licenseSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("LicenseSpecifications.\(index0.advanced(by: 1))"))
                    try licenseSpecificationsContainer0.encode(importimagelicenseconfigurationrequest0, forKey: Key(""))
                }
            }
        }
        if let licenseType = licenseType {
            try container.encode(licenseType, forKey: Key("LicenseType"))
        }
        if let platform = platform {
            try container.encode(platform, forKey: Key("Platform"))
        }
        if let roleName = roleName {
            try container.encode(roleName, forKey: Key("RoleName"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        try container.encode("ImportImage", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}