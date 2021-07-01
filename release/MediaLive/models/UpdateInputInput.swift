// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// A request to update an input.
public struct UpdateInputInput: Equatable {
    /// Destination settings for PUSH type inputs.
    public let destinations: [InputDestinationRequest]?
    /// Settings for the devices.
    public let inputDevices: [InputDeviceRequest]?
    /// Unique ID of the input.
    public let inputId: String?
    /// A list of security groups referenced by IDs to attach to the input.
    public let inputSecurityGroups: [String]?
    /// A list of the MediaConnect Flow ARNs that you want to use as the source of the input. You can specify as few as one
    /// Flow and presently, as many as two. The only requirement is when you have more than one is that each Flow is in a
    /// separate Availability Zone as this ensures your EML input is redundant to AZ issues.
    public let mediaConnectFlows: [MediaConnectFlowRequest]?
    /// Name of the input.
    public let name: String?
    /// The Amazon Resource Name (ARN) of the role this input assumes during and after creation.
    public let roleArn: String?
    /// The source URLs for a PULL-type input. Every PULL type input needs
    /// exactly two source URLs for redundancy.
    /// Only specify sources for PULL type Inputs. Leave Destinations empty.
    public let sources: [InputSourceRequest]?

    public init (
        destinations: [InputDestinationRequest]? = nil,
        inputDevices: [InputDeviceRequest]? = nil,
        inputId: String? = nil,
        inputSecurityGroups: [String]? = nil,
        mediaConnectFlows: [MediaConnectFlowRequest]? = nil,
        name: String? = nil,
        roleArn: String? = nil,
        sources: [InputSourceRequest]? = nil
    )
    {
        self.destinations = destinations
        self.inputDevices = inputDevices
        self.inputId = inputId
        self.inputSecurityGroups = inputSecurityGroups
        self.mediaConnectFlows = mediaConnectFlows
        self.name = name
        self.roleArn = roleArn
        self.sources = sources
    }
}

extension UpdateInputInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateInputInput(destinations: \(String(describing: destinations)), inputDevices: \(String(describing: inputDevices)), inputId: \(String(describing: inputId)), inputSecurityGroups: \(String(describing: inputSecurityGroups)), mediaConnectFlows: \(String(describing: mediaConnectFlows)), name: \(String(describing: name)), roleArn: \(String(describing: roleArn)), sources: \(String(describing: sources)))"}
}