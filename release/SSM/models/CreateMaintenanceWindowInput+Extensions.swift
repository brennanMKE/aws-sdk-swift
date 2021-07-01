// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateMaintenanceWindowInputHeadersMiddleware: Middleware {
    public let id: String = "CreateMaintenanceWindowInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<CreateMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMaintenanceWindowOutputError>
}

public struct CreateMaintenanceWindowInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateMaintenanceWindowInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<CreateMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMaintenanceWindowOutputError>
}

public struct CreateMaintenanceWindowInputBodyMiddleware: Middleware {
    public let id: String = "CreateMaintenanceWindowInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateMaintenanceWindowOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<CreateMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateMaintenanceWindowOutputError>
}

extension CreateMaintenanceWindowInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowUnassociatedTargets = "AllowUnassociatedTargets"
        case clientToken = "ClientToken"
        case cutoff = "Cutoff"
        case description = "Description"
        case duration = "Duration"
        case endDate = "EndDate"
        case name = "Name"
        case schedule = "Schedule"
        case scheduleOffset = "ScheduleOffset"
        case scheduleTimezone = "ScheduleTimezone"
        case startDate = "StartDate"
        case tags = "Tags"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if allowUnassociatedTargets != false {
            try encodeContainer.encode(allowUnassociatedTargets, forKey: .allowUnassociatedTargets)
        }
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if cutoff != 0 {
            try encodeContainer.encode(cutoff, forKey: .cutoff)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if duration != 0 {
            try encodeContainer.encode(duration, forKey: .duration)
        }
        if let endDate = endDate {
            try encodeContainer.encode(endDate, forKey: .endDate)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let schedule = schedule {
            try encodeContainer.encode(schedule, forKey: .schedule)
        }
        if scheduleOffset != 0 {
            try encodeContainer.encode(scheduleOffset, forKey: .scheduleOffset)
        }
        if let scheduleTimezone = scheduleTimezone {
            try encodeContainer.encode(scheduleTimezone, forKey: .scheduleTimezone)
        }
        if let startDate = startDate {
            try encodeContainer.encode(startDate, forKey: .startDate)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
    }
}