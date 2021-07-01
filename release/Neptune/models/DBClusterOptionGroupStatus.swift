// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Not supported by Neptune.</p>
public struct DBClusterOptionGroupStatus: Equatable {
    /// <p>Not supported by Neptune.</p>
    public let dBClusterOptionGroupName: String?
    /// <p>Not supported by Neptune.</p>
    public let status: String?

    public init (
        dBClusterOptionGroupName: String? = nil,
        status: String? = nil
    )
    {
        self.dBClusterOptionGroupName = dBClusterOptionGroupName
        self.status = status
    }
}

extension DBClusterOptionGroupStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBClusterOptionGroupStatus(dBClusterOptionGroupName: \(String(describing: dBClusterOptionGroupName)), status: \(String(describing: status)))"}
}