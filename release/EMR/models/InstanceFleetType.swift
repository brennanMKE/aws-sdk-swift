// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum InstanceFleetType {
    case core
    case master
    case task
    case sdkUnknown(String)
}

extension InstanceFleetType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InstanceFleetType] {
        return [
            .core,
            .master,
            .task,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .core: return "CORE"
        case .master: return "MASTER"
        case .task: return "TASK"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InstanceFleetType(rawValue: rawValue) ?? InstanceFleetType.sdkUnknown(rawValue)
    }
}