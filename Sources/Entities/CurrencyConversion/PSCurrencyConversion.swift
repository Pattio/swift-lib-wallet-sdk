import ObjectMapper

public class PSCurrencyConversion: Mappable {
    public var fromCurrency: String!
    public var toCurrency: String!
    public var fromAmountDecimal: String?
    public var toAmountDecimal: String?
    public var accountNumber: String?
    public var maxFromAmountDecimal: String?
    public var minToAmountDecimal: String?
    
    public init() {}
    
    required public init?(map: Map) {}
    
    public func mapping(map: Map) {
        fromCurrency            <- map["from_currency"]
        toCurrency              <- map["to_currency"]
        fromAmountDecimal       <- map["from_amount_decimal"]
        toAmountDecimal         <- map["to_amount_decimal"]
        accountNumber           <- map["account_number"]
        maxFromAmountDecimal    <- map["max_from_amount_decimal"]
        minToAmountDecimal      <- map["min_to_amount_decimal"]
    }
}
