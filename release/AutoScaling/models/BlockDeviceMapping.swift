// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a block device mapping.</p>
public struct BlockDeviceMapping: Equatable {
    /// <p>The device name exposed to the EC2 instance (for example, <code>/dev/sdh</code> or
    ///                 <code>xvdh</code>). For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html">Device Naming on Linux
    ///                 Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    public let deviceName: String?
    /// <p>Parameters used to automatically set up EBS volumes when an instance is
    ///             launched.</p>
    ///         <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
    ///             both.</p>
    public let ebs: Ebs?
    /// <p>Setting this value to <code>true</code> suppresses the specified device included in
    ///             the block device mapping of the AMI.</p>
    ///         <p>If <code>NoDevice</code> is <code>true</code> for the root device, instances might
    ///             fail the EC2 health check. In that case, Amazon EC2 Auto Scaling launches replacement instances.</p>
    ///         <p>If you specify <code>NoDevice</code>, you cannot specify <code>Ebs</code>.</p>
    public let noDevice: Bool?
    /// <p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
    ///         <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
    ///             both.</p>
    public let virtualName: String?

    public init (
        deviceName: String? = nil,
        ebs: Ebs? = nil,
        noDevice: Bool? = nil,
        virtualName: String? = nil
    )
    {
        self.deviceName = deviceName
        self.ebs = ebs
        self.noDevice = noDevice
        self.virtualName = virtualName
    }
}

extension BlockDeviceMapping: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BlockDeviceMapping(deviceName: \(String(describing: deviceName)), ebs: \(String(describing: ebs)), noDevice: \(String(describing: noDevice)), virtualName: \(String(describing: virtualName)))"}
}