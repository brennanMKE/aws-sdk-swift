// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterDefaultPatchBaselineInput: Equatable {
    /// <p>The ID of the patch baseline that should be the default patch baseline.</p>
    public let baselineId: String?

    public init (
        baselineId: String? = nil
    )
    {
        self.baselineId = baselineId
    }
}

extension RegisterDefaultPatchBaselineInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterDefaultPatchBaselineInput(baselineId: \(String(describing: baselineId)))"}
}