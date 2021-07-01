// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a set of options that define how DataBrew will interpret a Microsoft Excel file when
///             creating a dataset from that file.</p>
public struct ExcelOptions: Equatable {
    /// <p>A variable that specifies whether the first row in the file is parsed as the
    ///             header. If this value is false, column names are auto-generated.</p>
    public let headerRow: Bool?
    /// <p>One or more sheet numbers in the Excel file that will be included in the
    ///             dataset.</p>
    public let sheetIndexes: [Int]?
    /// <p>One or more named sheets in the Excel file that will be included in the dataset.</p>
    public let sheetNames: [String]?

    public init (
        headerRow: Bool? = nil,
        sheetIndexes: [Int]? = nil,
        sheetNames: [String]? = nil
    )
    {
        self.headerRow = headerRow
        self.sheetIndexes = sheetIndexes
        self.sheetNames = sheetNames
    }
}

extension ExcelOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ExcelOptions(headerRow: \(String(describing: headerRow)), sheetIndexes: \(String(describing: sheetIndexes)), sheetNames: \(String(describing: sheetNames)))"}
}