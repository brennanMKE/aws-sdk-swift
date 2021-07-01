// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteTrafficMirrorTargetInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the Traffic Mirror target.</p>
    public let trafficMirrorTargetId: String?

    public init (
        dryRun: Bool = false,
        trafficMirrorTargetId: String? = nil
    )
    {
        self.dryRun = dryRun
        self.trafficMirrorTargetId = trafficMirrorTargetId
    }
}

extension DeleteTrafficMirrorTargetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteTrafficMirrorTargetInput(dryRun: \(String(describing: dryRun)), trafficMirrorTargetId: \(String(describing: trafficMirrorTargetId)))"}
}