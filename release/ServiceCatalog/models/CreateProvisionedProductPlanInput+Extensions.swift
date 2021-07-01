// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateProvisionedProductPlanInputHeadersMiddleware: Middleware {
    public let id: String = "CreateProvisionedProductPlanInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateProvisionedProductPlanInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateProvisionedProductPlanOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateProvisionedProductPlanInput>
    public typealias MOutput = OperationOutput<CreateProvisionedProductPlanOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateProvisionedProductPlanOutputError>
}

public struct CreateProvisionedProductPlanInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateProvisionedProductPlanInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateProvisionedProductPlanInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateProvisionedProductPlanOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateProvisionedProductPlanInput>
    public typealias MOutput = OperationOutput<CreateProvisionedProductPlanOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateProvisionedProductPlanOutputError>
}

public struct CreateProvisionedProductPlanInputBodyMiddleware: Middleware {
    public let id: String = "CreateProvisionedProductPlanInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateProvisionedProductPlanInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateProvisionedProductPlanOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateProvisionedProductPlanInput>
    public typealias MOutput = OperationOutput<CreateProvisionedProductPlanOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateProvisionedProductPlanOutputError>
}

extension CreateProvisionedProductPlanInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case idempotencyToken = "IdempotencyToken"
        case notificationArns = "NotificationArns"
        case pathId = "PathId"
        case planName = "PlanName"
        case planType = "PlanType"
        case productId = "ProductId"
        case provisionedProductName = "ProvisionedProductName"
        case provisioningArtifactId = "ProvisioningArtifactId"
        case provisioningParameters = "ProvisioningParameters"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptLanguage = acceptLanguage {
            try encodeContainer.encode(acceptLanguage, forKey: .acceptLanguage)
        }
        if let idempotencyToken = idempotencyToken {
            try encodeContainer.encode(idempotencyToken, forKey: .idempotencyToken)
        }
        if let notificationArns = notificationArns {
            var notificationArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .notificationArns)
            for notificationarns0 in notificationArns {
                try notificationArnsContainer.encode(notificationarns0)
            }
        }
        if let pathId = pathId {
            try encodeContainer.encode(pathId, forKey: .pathId)
        }
        if let planName = planName {
            try encodeContainer.encode(planName, forKey: .planName)
        }
        if let planType = planType {
            try encodeContainer.encode(planType.rawValue, forKey: .planType)
        }
        if let productId = productId {
            try encodeContainer.encode(productId, forKey: .productId)
        }
        if let provisionedProductName = provisionedProductName {
            try encodeContainer.encode(provisionedProductName, forKey: .provisionedProductName)
        }
        if let provisioningArtifactId = provisioningArtifactId {
            try encodeContainer.encode(provisioningArtifactId, forKey: .provisioningArtifactId)
        }
        if let provisioningParameters = provisioningParameters {
            var provisioningParametersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .provisioningParameters)
            for updateprovisioningparameters0 in provisioningParameters {
                try provisioningParametersContainer.encode(updateprovisioningparameters0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for tags0 in tags {
                try tagsContainer.encode(tags0)
            }
        }
    }
}