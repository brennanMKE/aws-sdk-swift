// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SchedulingStrategy {
    case daemon
    case replica
    case sdkUnknown(String)
}

extension SchedulingStrategy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SchedulingStrategy] {
        return [
            .daemon,
            .replica,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .daemon: return "DAEMON"
        case .replica: return "REPLICA"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SchedulingStrategy(rawValue: rawValue) ?? SchedulingStrategy.sdkUnknown(rawValue)
    }
}