// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyAquaConfigurationInput: Equatable {
    /// <p>The new value of AQUA configuration status. Possible values include the following.</p>
    ///         <ul>
    ///             <li>
    ///                <p>enabled - Use AQUA if it is available for the current AWS Region and Amazon Redshift node type.</p>
    ///             </li>
    ///             <li>
    ///                <p>disabled - Don't use AQUA. </p>
    ///             </li>
    ///             <li>
    ///                <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    ///             </li>
    ///          </ul>
    public let aquaConfigurationStatus: AquaConfigurationStatus?
    /// <p>The identifier of the cluster to be modified.</p>
    public let clusterIdentifier: String?

    public init (
        aquaConfigurationStatus: AquaConfigurationStatus? = nil,
        clusterIdentifier: String? = nil
    )
    {
        self.aquaConfigurationStatus = aquaConfigurationStatus
        self.clusterIdentifier = clusterIdentifier
    }
}

extension ModifyAquaConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyAquaConfigurationInput(aquaConfigurationStatus: \(String(describing: aquaConfigurationStatus)), clusterIdentifier: \(String(describing: clusterIdentifier)))"}
}