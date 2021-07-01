// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeGameSessionPlacementOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeGameSessionPlacementOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.gameSessionPlacement = output.gameSessionPlacement
        } else {
            self.gameSessionPlacement = nil
        }
    }
}