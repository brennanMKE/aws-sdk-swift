// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that contains the options specified by the sumitter of the import request.</p>
public struct ImportOptions: Equatable {
    /// <p>Options relating to parsing delimited text. Required if dataFormat is DELIMITED_TEXT.</p>
    public let delimitedTextOptions: DelimitedTextImportOptions?
    /// <p>Options relating to the destination of the import request.</p>
    public let destinationOptions: DestinationOptions?

    public init (
        delimitedTextOptions: DelimitedTextImportOptions? = nil,
        destinationOptions: DestinationOptions? = nil
    )
    {
        self.delimitedTextOptions = delimitedTextOptions
        self.destinationOptions = destinationOptions
    }
}

extension ImportOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImportOptions(delimitedTextOptions: \(String(describing: delimitedTextOptions)), destinationOptions: \(String(describing: destinationOptions)))"}
}