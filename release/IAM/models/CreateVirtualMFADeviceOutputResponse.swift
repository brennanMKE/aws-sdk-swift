// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request.
///     </p>
public struct CreateVirtualMFADeviceOutputResponse: Equatable {
    /// <p>A structure containing details about the new virtual MFA device.</p>
    public let virtualMFADevice: VirtualMFADevice?

    public init (
        virtualMFADevice: VirtualMFADevice? = nil
    )
    {
        self.virtualMFADevice = virtualMFADevice
    }
}

extension CreateVirtualMFADeviceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateVirtualMFADeviceOutputResponse(virtualMFADevice: \(String(describing: virtualMFADevice)))"}
}