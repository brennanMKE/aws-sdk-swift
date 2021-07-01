// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the configuration information for a job's manifest.</p>
public struct JobManifest: Equatable {
    /// <p>Contains the information required to locate the specified job's manifest.</p>
    public let location: JobManifestLocation?
    /// <p>Describes the format of the specified job's manifest. If the manifest is in CSV format, also describes the columns contained within the manifest.</p>
    public let spec: JobManifestSpec?

    public init (
        location: JobManifestLocation? = nil,
        spec: JobManifestSpec? = nil
    )
    {
        self.location = location
        self.spec = spec
    }
}

extension JobManifest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobManifest(location: \(String(describing: location)), spec: \(String(describing: spec)))"}
}