// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a network interface attachment.</p>
public struct InstanceNetworkInterfaceAttachment: Equatable {
    /// <p>The time stamp when the attachment initiated.</p>
    public let attachTime: Date?
    /// <p>The ID of the network interface attachment.</p>
    public let attachmentId: String?
    /// <p>Indicates whether the network interface is deleted when the instance is terminated.</p>
    public let deleteOnTermination: Bool
    /// <p>The index of the device on the instance for the network interface attachment.</p>
    public let deviceIndex: Int
    /// <p>The index of the network card.</p>
    public let networkCardIndex: Int
    /// <p>The attachment state.</p>
    public let status: AttachmentStatus?

    public init (
        attachTime: Date? = nil,
        attachmentId: String? = nil,
        deleteOnTermination: Bool = false,
        deviceIndex: Int = 0,
        networkCardIndex: Int = 0,
        status: AttachmentStatus? = nil
    )
    {
        self.attachTime = attachTime
        self.attachmentId = attachmentId
        self.deleteOnTermination = deleteOnTermination
        self.deviceIndex = deviceIndex
        self.networkCardIndex = networkCardIndex
        self.status = status
    }
}

extension InstanceNetworkInterfaceAttachment: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceNetworkInterfaceAttachment(attachTime: \(String(describing: attachTime)), attachmentId: \(String(describing: attachmentId)), deleteOnTermination: \(String(describing: deleteOnTermination)), deviceIndex: \(String(describing: deviceIndex)), networkCardIndex: \(String(describing: networkCardIndex)), status: \(String(describing: status)))"}
}