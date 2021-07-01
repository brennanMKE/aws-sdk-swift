// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GatewayRouteSpec: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case grpcRoute
        case http2Route
        case httpRoute
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let grpcRoute = grpcRoute {
            try encodeContainer.encode(grpcRoute, forKey: .grpcRoute)
        }
        if let http2Route = http2Route {
            try encodeContainer.encode(http2Route, forKey: .http2Route)
        }
        if let httpRoute = httpRoute {
            try encodeContainer.encode(httpRoute, forKey: .httpRoute)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let httpRouteDecoded = try containerValues.decodeIfPresent(HttpGatewayRoute.self, forKey: .httpRoute)
        httpRoute = httpRouteDecoded
        let http2RouteDecoded = try containerValues.decodeIfPresent(HttpGatewayRoute.self, forKey: .http2Route)
        http2Route = http2RouteDecoded
        let grpcRouteDecoded = try containerValues.decodeIfPresent(GrpcGatewayRoute.self, forKey: .grpcRoute)
        grpcRoute = grpcRouteDecoded
    }
}