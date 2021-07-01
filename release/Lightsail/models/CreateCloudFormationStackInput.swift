// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCloudFormationStackInput: Equatable {
    /// <p>An array of parameters that will be used to create the new Amazon EC2 instance. You can only
    ///       pass one instance entry at a time in this array. You will get an invalid parameter error if
    ///       you pass more than one instance entry in this array.</p>
    public let instances: [InstanceEntry]?

    public init (
        instances: [InstanceEntry]? = nil
    )
    {
        self.instances = instances
    }
}

extension CreateCloudFormationStackInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCloudFormationStackInput(instances: \(String(describing: instances)))"}
}