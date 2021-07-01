// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateOrganizationInputHeadersMiddleware: Middleware {
    public let id: String = "CreateOrganizationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOrganizationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOrganizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateOrganizationInput>
    public typealias MOutput = OperationOutput<CreateOrganizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOrganizationOutputError>
}

public struct CreateOrganizationInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateOrganizationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOrganizationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOrganizationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateOrganizationInput>
    public typealias MOutput = OperationOutput<CreateOrganizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOrganizationOutputError>
}

public struct CreateOrganizationInputBodyMiddleware: Middleware {
    public let id: String = "CreateOrganizationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateOrganizationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateOrganizationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateOrganizationInput>
    public typealias MOutput = OperationOutput<CreateOrganizationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateOrganizationOutputError>
}

extension CreateOrganizationInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case featureSet = "FeatureSet"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let featureSet = featureSet {
            try encodeContainer.encode(featureSet.rawValue, forKey: .featureSet)
        }
    }
}