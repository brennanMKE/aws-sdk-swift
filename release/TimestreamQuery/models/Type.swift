// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the data type of a column in a query result set. The data type can be scalar or complex. The supported scalar data types are integers, boolean, string, double, timestamp, date, time, and intervals. The supported complex data types are arrays, rows, and timeseries.</p>
public struct `Type`: Equatable {
    /// <p>Indicates if the column is an array.</p>
    public let arrayColumnInfo: ColumnInfo?
    /// <p>Indicates if the column is a row.</p>
    public let rowColumnInfo: [ColumnInfo]?
    /// <p>Indicates if the column is of type string, integer, boolean, double, timestamp, date, time. </p>
    public let scalarType: ScalarType?
    /// <p>Indicates if the column is a timeseries data type.</p>
    public let timeSeriesMeasureValueColumnInfo: ColumnInfo?

    public init (
        arrayColumnInfo: ColumnInfo? = nil,
        rowColumnInfo: [ColumnInfo]? = nil,
        scalarType: ScalarType? = nil,
        timeSeriesMeasureValueColumnInfo: ColumnInfo? = nil
    )
    {
        self.arrayColumnInfo = arrayColumnInfo
        self.rowColumnInfo = rowColumnInfo
        self.scalarType = scalarType
        self.timeSeriesMeasureValueColumnInfo = timeSeriesMeasureValueColumnInfo
    }
}

extension `Type`: CustomDebugStringConvertible {
    public var debugDescription: String {
        "`Type`(arrayColumnInfo: \(String(describing: arrayColumnInfo)), rowColumnInfo: \(String(describing: rowColumnInfo)), scalarType: \(String(describing: scalarType)), timeSeriesMeasureValueColumnInfo: \(String(describing: timeSeriesMeasureValueColumnInfo)))"}
}