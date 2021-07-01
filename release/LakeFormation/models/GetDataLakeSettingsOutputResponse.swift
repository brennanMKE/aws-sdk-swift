// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetDataLakeSettingsOutputResponse: Equatable {
    /// <p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators.</p>
    public let dataLakeSettings: DataLakeSettings?

    public init (
        dataLakeSettings: DataLakeSettings? = nil
    )
    {
        self.dataLakeSettings = dataLakeSettings
    }
}

extension GetDataLakeSettingsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetDataLakeSettingsOutputResponse(dataLakeSettings: \(String(describing: dataLakeSettings)))"}
}