// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Enable this setting when you run a test job to estimate how many reserved transcoding slots (RTS) you need. When this is enabled, MediaConvert runs your job from an on-demand queue with similar performance to what you will see with one RTS in a reserved queue. This setting is disabled by default.
public enum SimulateReservedQueue {
    case disabled
    case enabled
    case sdkUnknown(String)
}

extension SimulateReservedQueue : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SimulateReservedQueue] {
        return [
            .disabled,
            .enabled,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .enabled: return "ENABLED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SimulateReservedQueue(rawValue: rawValue) ?? SimulateReservedQueue.sdkUnknown(rawValue)
    }
}