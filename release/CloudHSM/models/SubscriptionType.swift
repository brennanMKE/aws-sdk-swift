// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the type of subscription for the HSM.</p>
///          <ul>
///             <li>
///                <p>
///                   <b>PRODUCTION</b> - The HSM is being used in a production
///           environment.</p>
///             </li>
///             <li>
///                <p>
///                   <b>TRIAL</b> - The HSM is being used in a product
///           trial.</p>
///             </li>
///          </ul>
public enum SubscriptionType {
    case production
    case sdkUnknown(String)
}

extension SubscriptionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SubscriptionType] {
        return [
            .production,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .production: return "PRODUCTION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SubscriptionType(rawValue: rawValue) ?? SubscriptionType.sdkUnknown(rawValue)
    }
}