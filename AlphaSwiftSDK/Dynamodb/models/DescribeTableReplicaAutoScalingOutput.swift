// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeTableReplicaAutoScalingOutput: Equatable {
    /// <p>Represents the auto scaling properties of the table.</p>
    public let tableAutoScalingDescription: TableAutoScalingDescription?

    public init (
        tableAutoScalingDescription: TableAutoScalingDescription? = nil
    )
    {
        self.tableAutoScalingDescription = tableAutoScalingDescription
    }
}