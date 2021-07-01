// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetCertificateAuthorityCsrOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetCertificateAuthorityCsrOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.csr = output.csr
        } else {
            self.csr = nil
        }
    }
}