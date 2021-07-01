// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum IsModifiable {
    case conditional
    case `false`
    case `true`
    case sdkUnknown(String)
}

extension IsModifiable : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [IsModifiable] {
        return [
            .conditional,
            .false,
            .true,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .conditional: return "CONDITIONAL"
        case .false: return "FALSE"
        case .true: return "TRUE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = IsModifiable(rawValue: rawValue) ?? IsModifiable.sdkUnknown(rawValue)
    }
}