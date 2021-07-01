// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ICD10CMEntityCategory {
    case medicalCondition
    case sdkUnknown(String)
}

extension ICD10CMEntityCategory : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ICD10CMEntityCategory] {
        return [
            .medicalCondition,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .medicalCondition: return "MEDICAL_CONDITION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ICD10CMEntityCategory(rawValue: rawValue) ?? ICD10CMEntityCategory.sdkUnknown(rawValue)
    }
}