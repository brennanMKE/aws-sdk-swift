// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteTargetInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteTargetInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTargetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTargetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTargetInput>
    public typealias MOutput = OperationOutput<DeleteTargetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTargetOutputError>
}

public struct DeleteTargetInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteTargetInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTargetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTargetOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTargetInput>
    public typealias MOutput = OperationOutput<DeleteTargetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTargetOutputError>
}

public struct DeleteTargetInputBodyMiddleware: Middleware {
    public let id: String = "DeleteTargetInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTargetInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTargetOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteTargetInput>
    public typealias MOutput = OperationOutput<DeleteTargetOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTargetOutputError>
}

extension DeleteTargetInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case forceUnsubscribeAll = "ForceUnsubscribeAll"
        case targetAddress = "TargetAddress"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if forceUnsubscribeAll != false {
            try encodeContainer.encode(forceUnsubscribeAll, forKey: .forceUnsubscribeAll)
        }
        if let targetAddress = targetAddress {
            try encodeContainer.encode(targetAddress, forKey: .targetAddress)
        }
    }
}