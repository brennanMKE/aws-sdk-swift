// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the Inference accelerators for the instance type.</p>
public struct InferenceAcceleratorInfo: Equatable {
    /// <p>Describes the Inference accelerators for the instance type.</p>
    public let accelerators: [InferenceDeviceInfo]?

    public init (
        accelerators: [InferenceDeviceInfo]? = nil
    )
    {
        self.accelerators = accelerators
    }
}

extension InferenceAcceleratorInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InferenceAcceleratorInfo(accelerators: \(String(describing: accelerators)))"}
}