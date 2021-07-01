// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ReleaseStatusValues {
    case beta
    case sdkUnknown(String)
}

extension ReleaseStatusValues : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ReleaseStatusValues] {
        return [
            .beta,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .beta: return "beta"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ReleaseStatusValues(rawValue: rawValue) ?? ReleaseStatusValues.sdkUnknown(rawValue)
    }
}