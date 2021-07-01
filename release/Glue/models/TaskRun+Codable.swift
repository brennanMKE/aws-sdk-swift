// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TaskRun: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case completedOn = "CompletedOn"
        case errorString = "ErrorString"
        case executionTime = "ExecutionTime"
        case lastModifiedOn = "LastModifiedOn"
        case logGroupName = "LogGroupName"
        case properties = "Properties"
        case startedOn = "StartedOn"
        case status = "Status"
        case taskRunId = "TaskRunId"
        case transformId = "TransformId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let completedOn = completedOn {
            try encodeContainer.encode(completedOn.timeIntervalSince1970, forKey: .completedOn)
        }
        if let errorString = errorString {
            try encodeContainer.encode(errorString, forKey: .errorString)
        }
        if executionTime != 0 {
            try encodeContainer.encode(executionTime, forKey: .executionTime)
        }
        if let lastModifiedOn = lastModifiedOn {
            try encodeContainer.encode(lastModifiedOn.timeIntervalSince1970, forKey: .lastModifiedOn)
        }
        if let logGroupName = logGroupName {
            try encodeContainer.encode(logGroupName, forKey: .logGroupName)
        }
        if let properties = properties {
            try encodeContainer.encode(properties, forKey: .properties)
        }
        if let startedOn = startedOn {
            try encodeContainer.encode(startedOn.timeIntervalSince1970, forKey: .startedOn)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let taskRunId = taskRunId {
            try encodeContainer.encode(taskRunId, forKey: .taskRunId)
        }
        if let transformId = transformId {
            try encodeContainer.encode(transformId, forKey: .transformId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transformIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .transformId)
        transformId = transformIdDecoded
        let taskRunIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .taskRunId)
        taskRunId = taskRunIdDecoded
        let statusDecoded = try containerValues.decodeIfPresent(TaskStatusType.self, forKey: .status)
        status = statusDecoded
        let logGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logGroupName)
        logGroupName = logGroupNameDecoded
        let propertiesDecoded = try containerValues.decodeIfPresent(TaskRunProperties.self, forKey: .properties)
        properties = propertiesDecoded
        let errorStringDecoded = try containerValues.decodeIfPresent(String.self, forKey: .errorString)
        errorString = errorStringDecoded
        let startedOnDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startedOn)
        startedOn = startedOnDecoded
        let lastModifiedOnDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedOn)
        lastModifiedOn = lastModifiedOnDecoded
        let completedOnDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .completedOn)
        completedOn = completedOnDecoded
        let executionTimeDecoded = try containerValues.decode(Int.self, forKey: .executionTime)
        executionTime = executionTimeDecoded
    }
}