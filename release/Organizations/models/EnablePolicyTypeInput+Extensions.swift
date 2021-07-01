// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct EnablePolicyTypeInputHeadersMiddleware: Middleware {
    public let id: String = "EnablePolicyTypeInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EnablePolicyTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<EnablePolicyTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EnablePolicyTypeInput>
    public typealias MOutput = OperationOutput<EnablePolicyTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EnablePolicyTypeOutputError>
}

public struct EnablePolicyTypeInputQueryItemMiddleware: Middleware {
    public let id: String = "EnablePolicyTypeInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EnablePolicyTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<EnablePolicyTypeOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<EnablePolicyTypeInput>
    public typealias MOutput = OperationOutput<EnablePolicyTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EnablePolicyTypeOutputError>
}

public struct EnablePolicyTypeInputBodyMiddleware: Middleware {
    public let id: String = "EnablePolicyTypeInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<EnablePolicyTypeInput>,
                  next: H) -> Swift.Result<OperationOutput<EnablePolicyTypeOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<EnablePolicyTypeInput>
    public typealias MOutput = OperationOutput<EnablePolicyTypeOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<EnablePolicyTypeOutputError>
}

extension EnablePolicyTypeInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case policyType = "PolicyType"
        case rootId = "RootId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let policyType = policyType {
            try encodeContainer.encode(policyType.rawValue, forKey: .policyType)
        }
        if let rootId = rootId {
            try encodeContainer.encode(rootId, forKey: .rootId)
        }
    }
}