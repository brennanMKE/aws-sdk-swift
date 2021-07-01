// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>DescribeTapesOutput</p>
public struct DescribeTapesOutputResponse: Equatable {
    /// <p>An opaque string that can be used as part of a subsequent <code>DescribeTapes</code>
    ///          call to retrieve the next page of results.</p>
    ///
    ///          <p>If a response does not contain a marker, then there are no more results to be
    ///          retrieved.</p>
    public let marker: String?
    /// <p>An array of virtual tape descriptions.</p>
    public let tapes: [Tape]?

    public init (
        marker: String? = nil,
        tapes: [Tape]? = nil
    )
    {
        self.marker = marker
        self.tapes = tapes
    }
}

extension DescribeTapesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeTapesOutputResponse(marker: \(String(describing: marker)), tapes: \(String(describing: tapes)))"}
}