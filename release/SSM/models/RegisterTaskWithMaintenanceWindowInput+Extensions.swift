// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RegisterTaskWithMaintenanceWindowInputHeadersMiddleware: Middleware {
    public let id: String = "RegisterTaskWithMaintenanceWindowInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTaskWithMaintenanceWindowOutputError>
}

public struct RegisterTaskWithMaintenanceWindowInputQueryItemMiddleware: Middleware {
    public let id: String = "RegisterTaskWithMaintenanceWindowInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTaskWithMaintenanceWindowOutputError>
}

public struct RegisterTaskWithMaintenanceWindowInputBodyMiddleware: Middleware {
    public let id: String = "RegisterTaskWithMaintenanceWindowInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>,
                  next: H) -> Swift.Result<OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<RegisterTaskWithMaintenanceWindowInput>
    public typealias MOutput = OperationOutput<RegisterTaskWithMaintenanceWindowOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RegisterTaskWithMaintenanceWindowOutputError>
}

extension RegisterTaskWithMaintenanceWindowInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case description = "Description"
        case loggingInfo = "LoggingInfo"
        case maxConcurrency = "MaxConcurrency"
        case maxErrors = "MaxErrors"
        case name = "Name"
        case priority = "Priority"
        case serviceRoleArn = "ServiceRoleArn"
        case targets = "Targets"
        case taskArn = "TaskArn"
        case taskInvocationParameters = "TaskInvocationParameters"
        case taskParameters = "TaskParameters"
        case taskType = "TaskType"
        case windowId = "WindowId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let clientToken = clientToken {
            try encodeContainer.encode(clientToken, forKey: .clientToken)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let loggingInfo = loggingInfo {
            try encodeContainer.encode(loggingInfo, forKey: .loggingInfo)
        }
        if let maxConcurrency = maxConcurrency {
            try encodeContainer.encode(maxConcurrency, forKey: .maxConcurrency)
        }
        if let maxErrors = maxErrors {
            try encodeContainer.encode(maxErrors, forKey: .maxErrors)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if priority != 0 {
            try encodeContainer.encode(priority, forKey: .priority)
        }
        if let serviceRoleArn = serviceRoleArn {
            try encodeContainer.encode(serviceRoleArn, forKey: .serviceRoleArn)
        }
        if let targets = targets {
            var targetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .targets)
            for targets0 in targets {
                try targetsContainer.encode(targets0)
            }
        }
        if let taskArn = taskArn {
            try encodeContainer.encode(taskArn, forKey: .taskArn)
        }
        if let taskInvocationParameters = taskInvocationParameters {
            try encodeContainer.encode(taskInvocationParameters, forKey: .taskInvocationParameters)
        }
        if let taskParameters = taskParameters {
            var taskParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .taskParameters)
            for (dictKey0, maintenancewindowtaskparameters0) in taskParameters {
                try taskParametersContainer.encode(maintenancewindowtaskparameters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let taskType = taskType {
            try encodeContainer.encode(taskType.rawValue, forKey: .taskType)
        }
        if let windowId = windowId {
            try encodeContainer.encode(windowId, forKey: .windowId)
        }
    }
}