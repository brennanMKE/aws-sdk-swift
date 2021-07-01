// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the location of the updated firmware.</p>
public struct Destination: Equatable {
    /// <p>Describes the location in S3 of the updated firmware.</p>
    public let s3Destination: S3Destination?

    public init (
        s3Destination: S3Destination? = nil
    )
    {
        self.s3Destination = s3Destination
    }
}

extension Destination: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Destination(s3Destination: \(String(describing: s3Destination)))"}
}