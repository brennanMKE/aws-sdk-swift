// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteTransitGatewayPeeringAttachmentInputHeadersMiddleware: Middleware {
    public let id: String = "DeleteTransitGatewayPeeringAttachmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTransitGatewayPeeringAttachmentOutputError>
}

public struct DeleteTransitGatewayPeeringAttachmentInputQueryItemMiddleware: Middleware {
    public let id: String = "DeleteTransitGatewayPeeringAttachmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTransitGatewayPeeringAttachmentOutputError>
}

public struct DeleteTransitGatewayPeeringAttachmentInputBodyMiddleware: Middleware {
    public let id: String = "DeleteTransitGatewayPeeringAttachmentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DeleteTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<DeleteTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DeleteTransitGatewayPeeringAttachmentOutputError>
}

extension DeleteTransitGatewayPeeringAttachmentInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let transitGatewayAttachmentId = transitGatewayAttachmentId {
            try container.encode(transitGatewayAttachmentId, forKey: Key("TransitGatewayAttachmentId"))
        }
        try container.encode("DeleteTransitGatewayPeeringAttachment", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}