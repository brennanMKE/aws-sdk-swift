// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteControlInput: Equatable {
    /// <p>
    ///    The identifier for the specified control.
    /// </p>
    public let controlId: String?

    public init (
        controlId: String? = nil
    )
    {
        self.controlId = controlId
    }
}

extension DeleteControlInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteControlInput(controlId: \(String(describing: controlId)))"}
}