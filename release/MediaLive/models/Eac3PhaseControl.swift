// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Eac3 Phase Control
public enum Eac3PhaseControl {
    case noShift
    case shift90Degrees
    case sdkUnknown(String)
}

extension Eac3PhaseControl : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Eac3PhaseControl] {
        return [
            .noShift,
            .shift90Degrees,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .noShift: return "NO_SHIFT"
        case .shift90Degrees: return "SHIFT_90_DEGREES"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Eac3PhaseControl(rawValue: rawValue) ?? Eac3PhaseControl.sdkUnknown(rawValue)
    }
}