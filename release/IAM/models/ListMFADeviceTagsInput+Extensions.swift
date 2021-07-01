// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListMFADeviceTagsInputHeadersMiddleware: Middleware {
    public let id: String = "ListMFADeviceTagsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListMFADeviceTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListMFADeviceTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListMFADeviceTagsInput>
    public typealias MOutput = OperationOutput<ListMFADeviceTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListMFADeviceTagsOutputError>
}

public struct ListMFADeviceTagsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListMFADeviceTagsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListMFADeviceTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListMFADeviceTagsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListMFADeviceTagsInput>
    public typealias MOutput = OperationOutput<ListMFADeviceTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListMFADeviceTagsOutputError>
}

public struct ListMFADeviceTagsInputBodyMiddleware: Middleware {
    public let id: String = "ListMFADeviceTagsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListMFADeviceTagsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListMFADeviceTagsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListMFADeviceTagsInput>
    public typealias MOutput = OperationOutput<ListMFADeviceTagsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListMFADeviceTagsOutputError>
}

extension ListMFADeviceTagsInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let marker = marker {
            try container.encode(marker, forKey: Key("Marker"))
        }
        if let maxItems = maxItems {
            try container.encode(maxItems, forKey: Key("MaxItems"))
        }
        if let serialNumber = serialNumber {
            try container.encode(serialNumber, forKey: Key("SerialNumber"))
        }
        try container.encode("ListMFADeviceTags", forKey:Key("Action"))
        try container.encode("2010-05-08", forKey:Key("Version"))
    }
}