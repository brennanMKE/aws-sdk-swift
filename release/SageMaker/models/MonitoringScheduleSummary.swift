// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Summarizes the monitoring schedule.</p>
public struct MonitoringScheduleSummary: Equatable {
    /// <p>The creation time of the monitoring schedule.</p>
    public let creationTime: Date?
    /// <p>The name of the endpoint using the monitoring schedule.</p>
    public let endpointName: String?
    /// <p>The last time the monitoring schedule was modified.</p>
    public let lastModifiedTime: Date?
    /// <p>The name of the monitoring job definition that the schedule is for.</p>
    public let monitoringJobDefinitionName: String?
    /// <p>The Amazon Resource Name (ARN) of the monitoring schedule.</p>
    public let monitoringScheduleArn: String?
    /// <p>The name of the monitoring schedule.</p>
    public let monitoringScheduleName: String?
    /// <p>The status of the monitoring schedule.</p>
    public let monitoringScheduleStatus: ScheduleStatus?
    /// <p>The type of the monitoring job definition that the schedule is for.</p>
    public let monitoringType: MonitoringType?

    public init (
        creationTime: Date? = nil,
        endpointName: String? = nil,
        lastModifiedTime: Date? = nil,
        monitoringJobDefinitionName: String? = nil,
        monitoringScheduleArn: String? = nil,
        monitoringScheduleName: String? = nil,
        monitoringScheduleStatus: ScheduleStatus? = nil,
        monitoringType: MonitoringType? = nil
    )
    {
        self.creationTime = creationTime
        self.endpointName = endpointName
        self.lastModifiedTime = lastModifiedTime
        self.monitoringJobDefinitionName = monitoringJobDefinitionName
        self.monitoringScheduleArn = monitoringScheduleArn
        self.monitoringScheduleName = monitoringScheduleName
        self.monitoringScheduleStatus = monitoringScheduleStatus
        self.monitoringType = monitoringType
    }
}

extension MonitoringScheduleSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MonitoringScheduleSummary(creationTime: \(String(describing: creationTime)), endpointName: \(String(describing: endpointName)), lastModifiedTime: \(String(describing: lastModifiedTime)), monitoringJobDefinitionName: \(String(describing: monitoringJobDefinitionName)), monitoringScheduleArn: \(String(describing: monitoringScheduleArn)), monitoringScheduleName: \(String(describing: monitoringScheduleName)), monitoringScheduleStatus: \(String(describing: monitoringScheduleStatus)), monitoringType: \(String(describing: monitoringType)))"}
}