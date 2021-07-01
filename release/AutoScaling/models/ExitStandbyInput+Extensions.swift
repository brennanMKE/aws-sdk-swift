// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ExitStandbyInputHeadersMiddleware: Middleware {
    public let id: String = "ExitStandbyInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExitStandbyInput>,
                  next: H) -> Swift.Result<OperationOutput<ExitStandbyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExitStandbyInput>
    public typealias MOutput = OperationOutput<ExitStandbyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExitStandbyOutputError>
}

public struct ExitStandbyInputQueryItemMiddleware: Middleware {
    public let id: String = "ExitStandbyInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExitStandbyInput>,
                  next: H) -> Swift.Result<OperationOutput<ExitStandbyOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ExitStandbyInput>
    public typealias MOutput = OperationOutput<ExitStandbyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExitStandbyOutputError>
}

public struct ExitStandbyInputBodyMiddleware: Middleware {
    public let id: String = "ExitStandbyInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ExitStandbyInput>,
                  next: H) -> Swift.Result<OperationOutput<ExitStandbyOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ExitStandbyInput>
    public typealias MOutput = OperationOutput<ExitStandbyOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ExitStandbyOutputError>
}

extension ExitStandbyInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let autoScalingGroupName = autoScalingGroupName {
            try container.encode(autoScalingGroupName, forKey: Key("AutoScalingGroupName"))
        }
        if let instanceIds = instanceIds {
            var instanceIdsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("InstanceIds"))
            for (index0, xmlstringmaxlen190) in instanceIds.enumerated() {
                try instanceIdsContainer.encode(xmlstringmaxlen190, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
        try container.encode("ExitStandby", forKey:Key("Action"))
        try container.encode("2011-01-01", forKey:Key("Version"))
    }
}