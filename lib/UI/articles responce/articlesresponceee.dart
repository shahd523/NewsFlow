import 'package:newsapp/UI/articles%20responce/articles.dart';

/// status : "ok"
/// code : "apiKeyInvalid"
/// message : "Your API key is invalid or incorrect. Check your key, or go to https://newsapi.org to create a free API key."
/// totalResults : 9848
/// articles : [{"source":{"id":null,"name":"BBC News"},"author":null,"title":"Bitcoin in the bush - the crypto mine in remote Zambia","description":"Bitcoin miners will go to remote locations to take advantage of cheap electricity.","url":"https://www.bbc.com/news/articles/cly4xe373p4o","urlToImage":"https://ichef.bbci.co.uk/news/1024/branded_news/583f/live/26541af0-0628-11f0-b773-ddd19e96af91.jpg","publishedAt":"2025-03-25T05:53:55Z","content":"Joe TidyCyber correspondent, BBC World Service\r\nEngineers from Gridless create makeshift computer labs to maintain their bitcoin mines\r\nThe roar of the Zambezi is deafening as millions of gallons of … [+8832 chars]"},{"source":{"id":"the-verge","name":"The Verge"},"author":"Gaby Del Valle","title":"Trump’s DOJ will no longer prosecute cryptocurrency fraud","description":"The Trump administration is disbanding a Department of Justice unit dedicated to enforcing cryptocurrency fraud, ending what it calls âregulation by prosecution.â  In a memo obtained by The Washington Post, deputy attorney general Todd Blanche directed fe…","url":"https://www.theverge.com/policy/645399/trump-doj-cryptocurrency-fraud-prosecutions-memo","urlToImage":"https://platform.theverge.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/25461724/STK432_Government__CVirginia_B.jpg?quality=90&strip=all&crop=0%2C10.732984293194%2C100%2C78.534031413613&w=1200","publishedAt":"2025-04-08T18:57:35Z","content":"An internal memo ordered prosecutors to no longer target virtual currency exchanges.\r\nAn internal memo ordered prosecutors to no longer target virtual currency exchanges.\r\nThe Trump administration is… [+2061 chars]"},{"source":{"id":"business-insider","name":"Business Insider"},"author":"Kwan Wei Kevin Tan","title":"Cathie Wood says people are going to learn the hard way that meme coins are the worst","description":"Wood, who has been bullish about cryptocurrencies like bitcoin, said her private funds are not investing in meme coins.","url":"https://www.businessinsider.com/cathie-wood-people-buying-meme-coins-learn-a-hard-lesson-2025-3","urlToImage":"https://i.insider.com/67da328fb8b41a9673fb0acb?width=1200&format=jpeg","publishedAt":"2025-03-19T05:04:25Z","content":"Ark Invest's Cathie Wood, who has been bullish about cryptocurrencies like bitcoin, said her private funds are not investing in meme coins.Joe Raedle via Getty Images\r\n<ul><li>Cathie Wood said most m… [+3159 chars]"},{"source":{"id":null,"name":"CoinDesk"},"author":"CoinDesk","title":"U.S. Stocks More Volatile Than Bitcoin","description":"U.S. stocks have become more volatile than Bitcoin, with the S&P 500’s seven-day realized volatility surging to 169% compared to Bitcoin’s 83%. CoinDesk's...","url":"https://videos.coindesk.com/previews/EDXc0PiW","urlToImage":"https://media.zenfs.com/en/coindesk_75/f96b0ae84958f9e2bfc7699e720a9f0e","publishedAt":"2025-04-11T20:44:27Z","content":"U.S. stocks have become more volatile than Bitcoin, with the S&amp;P 500s seven-day realized volatility surging to 169% compared to Bitcoins 83%. CoinDesk's Christine Lee explores on \"Chart of the Da… [+2 chars]"},null]

class Articlesresponceee {
  Articlesresponceee({
      String? status, 
      String? code, 
      String? message, 
      num? totalResults, 
      List<Articles>? articles,}){
    _status = status;
    _code = code;
    _message = message;
    _totalResults = totalResults;
    _articles = articles;
}

  Articlesresponceee.fromJson(dynamic json) {
    _status = json['status'];
    _code = json['code'];
    _message = json['message'];
    _totalResults = json['totalResults'];
    if (json['articles'] != null) {
      _articles = [];
      json['articles'].forEach((v) {
        _articles?.add(Articles.fromJson(v));
      });
    }
  }
  String? _status;
  String? _code;
  String? _message;
  num? _totalResults;
  List<Articles>? _articles;
Articlesresponceee copyWith({  String? status,
  String? code,
  String? message,
  num? totalResults,
  List<Articles>? articles,
}) => Articlesresponceee(  status: status ?? _status,
  code: code ?? _code,
  message: message ?? _message,
  totalResults: totalResults ?? _totalResults,
  articles: articles ?? _articles,
);
  String? get status => _status;
  String? get code => _code;
  String? get message => _message;
  num? get totalResults => _totalResults;
  List<Articles>? get articles => _articles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['code'] = _code;
    map['message'] = _message;
    map['totalResults'] = _totalResults;
    if (_articles != null) {
      map['articles'] = _articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}





