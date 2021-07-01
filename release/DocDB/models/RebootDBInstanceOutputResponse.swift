// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RebootDBInstanceOutputResponse: Equatable {
    /// <p>Detailed information about an instance. </p>
    public let dBInstance: DBInstance?

    public init (
        dBInstance: DBInstance? = nil
    )
    {
        self.dBInstance = dBInstance
    }
}

extension RebootDBInstanceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RebootDBInstanceOutputResponse(dBInstance: \(String(describing: dBInstance)))"}
}