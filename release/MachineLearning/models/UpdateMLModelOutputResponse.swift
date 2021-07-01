// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of an <code>UpdateMLModel</code> operation.</p>
///         <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>
public struct UpdateMLModelOutputResponse: Equatable {
    /// <p>The ID assigned to the <code>MLModel</code> during creation.  This value should be identical to the value
    ///             of the <code>MLModelID</code> in the request.</p>
    public let mLModelId: String?

    public init (
        mLModelId: String? = nil
    )
    {
        self.mLModelId = mLModelId
    }
}

extension UpdateMLModelOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateMLModelOutputResponse(mLModelId: \(String(describing: mLModelId)))"}
}