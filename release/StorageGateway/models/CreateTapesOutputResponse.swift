// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>CreateTapeOutput</p>
public struct CreateTapesOutputResponse: Equatable {
    /// <p>A list of unique Amazon Resource Names (ARNs) that represents the virtual tapes that
    ///          were created.</p>
    public let tapeARNs: [String]?

    public init (
        tapeARNs: [String]? = nil
    )
    {
        self.tapeARNs = tapeARNs
    }
}

extension CreateTapesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTapesOutputResponse(tapeARNs: \(String(describing: tapeARNs)))"}
}