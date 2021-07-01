// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details of the current stage of a replication run.</p>
public struct ReplicationRunStageDetails: Equatable {
    /// <p>The current stage of a replication run.</p>
    public let stage: String?
    /// <p>The progress of the current stage of a replication run.</p>
    public let stageProgress: String?

    public init (
        stage: String? = nil,
        stageProgress: String? = nil
    )
    {
        self.stage = stage
        self.stageProgress = stageProgress
    }
}

extension ReplicationRunStageDetails: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ReplicationRunStageDetails(stage: \(String(describing: stage)), stageProgress: \(String(describing: stageProgress)))"}
}