// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeAddressInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeAddressInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAddressOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAddressInput>
    public typealias MOutput = OperationOutput<DescribeAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAddressOutputError>
}

public struct DescribeAddressInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeAddressInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAddressOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeAddressInput>
    public typealias MOutput = OperationOutput<DescribeAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAddressOutputError>
}

public struct DescribeAddressInputBodyMiddleware: Middleware {
    public let id: String = "DescribeAddressInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeAddressInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeAddressOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeAddressInput>
    public typealias MOutput = OperationOutput<DescribeAddressOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeAddressOutputError>
}

extension DescribeAddressInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case addressId = "AddressId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let addressId = addressId {
            try encodeContainer.encode(addressId, forKey: .addressId)
        }
    }
}