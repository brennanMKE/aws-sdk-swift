// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssociateResolverRuleOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AssociateResolverRuleOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.resolverRuleAssociation = output.resolverRuleAssociation
        } else {
            self.resolverRuleAssociation = nil
        }
    }
}