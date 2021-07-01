// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a simulation software suite.</p>
public struct SimulationSoftwareSuite: Equatable {
    /// <p>The name of the simulation software suite.</p>
    public let name: SimulationSoftwareSuiteType?
    /// <p>The version of the simulation software suite.</p>
    public let version: String?

    public init (
        name: SimulationSoftwareSuiteType? = nil,
        version: String? = nil
    )
    {
        self.name = name
        self.version = version
    }
}

extension SimulationSoftwareSuite: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SimulationSoftwareSuite(name: \(String(describing: name)), version: \(String(describing: version)))"}
}