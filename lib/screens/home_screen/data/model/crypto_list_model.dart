class CryptoListModel {
  String? id;
  String? symbol;
  String? name;
  String? image;
  num? currentPrice;
  double? priceChangePercentage24h;

  CryptoListModel({
    this.id,
    this.symbol,
    this.name,
    this.image,
    this.currentPrice,
    this.priceChangePercentage24h,
  });

  CryptoListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_price'] ?? 0;
    priceChangePercentage24h = json['price_change_percentage_24h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['symbol'] = symbol;
    data['name'] = name;
    data['image'] = image;
    data['current_price'] = currentPrice;
    data['price_change_percentage_24h'] = priceChangePercentage24h;
    return data;
  }
}
