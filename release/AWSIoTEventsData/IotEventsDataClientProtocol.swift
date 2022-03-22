// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events Data API commands to send inputs to detectors, list detectors, and view or update a detector's status. For more information, see [What is AWS IoT Events?](https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html) in the AWS IoT Events Developer Guide.
public protocol IotEventsDataClientProtocol {
    /// Acknowledges one or more alarms. The alarms change to the ACKNOWLEDGED state after you acknowledge them.
    func batchAcknowledgeAlarm(input: BatchAcknowledgeAlarmInput) async throws -> BatchAcknowledgeAlarmOutputResponse
    /// Disables one or more alarms. The alarms change to the DISABLED state after you disable them.
    func batchDisableAlarm(input: BatchDisableAlarmInput) async throws -> BatchDisableAlarmOutputResponse
    /// Enables one or more alarms. The alarms change to the NORMAL state after you enable them.
    func batchEnableAlarm(input: BatchEnableAlarmInput) async throws -> BatchEnableAlarmOutputResponse
    /// Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
    func batchPutMessage(input: BatchPutMessageInput) async throws -> BatchPutMessageOutputResponse
    /// Resets one or more alarms. The alarms return to the NORMAL state after you reset them.
    func batchResetAlarm(input: BatchResetAlarmInput) async throws -> BatchResetAlarmOutputResponse
    /// Changes one or more alarms to the snooze mode. The alarms change to the SNOOZE_DISABLED state after you set them to the snooze mode.
    func batchSnoozeAlarm(input: BatchSnoozeAlarmInput) async throws -> BatchSnoozeAlarmOutputResponse
    /// Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
    func batchUpdateDetector(input: BatchUpdateDetectorInput) async throws -> BatchUpdateDetectorOutputResponse
    /// Retrieves information about an alarm.
    func describeAlarm(input: DescribeAlarmInput) async throws -> DescribeAlarmOutputResponse
    /// Returns information about the specified detector (instance).
    func describeDetector(input: DescribeDetectorInput) async throws -> DescribeDetectorOutputResponse
    /// Lists one or more alarms. The operation returns only the metadata associated with each alarm.
    func listAlarms(input: ListAlarmsInput) async throws -> ListAlarmsOutputResponse
    /// Lists detectors (the instances of a detector model).
    func listDetectors(input: ListDetectorsInput) async throws -> ListDetectorsOutputResponse
}

public enum IotEventsDataClientTypes {}
