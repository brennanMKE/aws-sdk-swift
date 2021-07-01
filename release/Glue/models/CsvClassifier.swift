// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A classifier for custom <code>CSV</code> content.</p>
public struct CsvClassifier: Equatable {
    /// <p>Enables the processing of files that contain only one column.</p>
    public let allowSingleColumn: Bool?
    /// <p>Indicates whether the CSV file contains a header.</p>
    public let containsHeader: CsvHeaderOption?
    /// <p>The time that this classifier was registered.</p>
    public let creationTime: Date?
    /// <p>A custom symbol to denote what separates each column entry in the row.</p>
    public let delimiter: String?
    /// <p>Specifies not to trim values before identifying the type of column values. The default
    ///       value is <code>true</code>.</p>
    public let disableValueTrimming: Bool?
    /// <p>A list of strings representing column names.</p>
    public let header: [String]?
    /// <p>The time that this classifier was last updated.</p>
    public let lastUpdated: Date?
    /// <p>The name of the classifier.</p>
    public let name: String?
    /// <p>A custom symbol to denote what combines content into a single column value. It must be
    ///       different from the column delimiter.</p>
    public let quoteSymbol: String?
    /// <p>The version of this classifier.</p>
    public let version: Int

    public init (
        allowSingleColumn: Bool? = nil,
        containsHeader: CsvHeaderOption? = nil,
        creationTime: Date? = nil,
        delimiter: String? = nil,
        disableValueTrimming: Bool? = nil,
        header: [String]? = nil,
        lastUpdated: Date? = nil,
        name: String? = nil,
        quoteSymbol: String? = nil,
        version: Int = 0
    )
    {
        self.allowSingleColumn = allowSingleColumn
        self.containsHeader = containsHeader
        self.creationTime = creationTime
        self.delimiter = delimiter
        self.disableValueTrimming = disableValueTrimming
        self.header = header
        self.lastUpdated = lastUpdated
        self.name = name
        self.quoteSymbol = quoteSymbol
        self.version = version
    }
}

extension CsvClassifier: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CsvClassifier(allowSingleColumn: \(String(describing: allowSingleColumn)), containsHeader: \(String(describing: containsHeader)), creationTime: \(String(describing: creationTime)), delimiter: \(String(describing: delimiter)), disableValueTrimming: \(String(describing: disableValueTrimming)), header: \(String(describing: header)), lastUpdated: \(String(describing: lastUpdated)), name: \(String(describing: name)), quoteSymbol: \(String(describing: quoteSymbol)), version: \(String(describing: version)))"}
}