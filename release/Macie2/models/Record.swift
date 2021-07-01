// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the location of an occurrence of sensitive data in an Apache Avro object container or Apache Parquet file.</p>
public struct Record: Equatable {
    /// <p>The path, as a JSONPath expression, to the field in the record that contains the data. If Amazon Macie detects sensitive data in the name of any element in the path, Macie omits this field.</p> <p>If the name of an element exceeds 20 characters, Macie truncates the name by removing characters from the beginning of the name. If the resulting full path exceeds 250 characters, Macie also truncates the path, starting with the first element in the path, until the path contains 250 or fewer characters.</p>
    public let jsonPath: String?
    /// <p>The record index, starting from 0, for the record that contains the data.</p>
    public let recordIndex: Int

    public init (
        jsonPath: String? = nil,
        recordIndex: Int = 0
    )
    {
        self.jsonPath = jsonPath
        self.recordIndex = recordIndex
    }
}

extension Record: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Record(jsonPath: \(String(describing: jsonPath)), recordIndex: \(String(describing: recordIndex)))"}
}