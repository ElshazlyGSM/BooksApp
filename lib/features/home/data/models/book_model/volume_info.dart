class VolumeInfo {
  VolumeInfo({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });
  late final String title;
  late final String subtitle;
  late final List<String> authors;
  late final String publisher;
  late final String publishedDate;
  late final String description;
  late final List<IndustryIdentifiers> industryIdentifiers;
  late final ReadingModes readingModes;
  late final int pageCount;
  late final String printType;
  late final List<String> categories;
  late final String maturityRating;
  late final bool allowAnonLogging;
  late final String contentVersion;
  late final PanelizationSummary panelizationSummary;
  late final ImageLinks imageLinks;
  late final String language;
  late final String previewLink;
  late final String infoLink;
  late final String canonicalVolumeLink;

  VolumeInfo.fromJson(Map<String, dynamic> json){
    title = json['title'];
    subtitle = json['subtitle'];
    authors = List.castFrom<dynamic, String>(json['authors']);
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    industryIdentifiers = List.from(json['industryIdentifiers']).map((e)=>IndustryIdentifiers.fromJson(e)).toList();
    readingModes = ReadingModes.fromJson(json['readingModes']);
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = List.castFrom<dynamic, String>(json['categories']);
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = PanelizationSummary.fromJson(json['panelizationSummary']);
    imageLinks = ImageLinks.fromJson(json['imageLinks']);
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['subtitle'] = subtitle;
    _data['authors'] = authors;
    _data['publisher'] = publisher;
    _data['publishedDate'] = publishedDate;
    _data['description'] = description;
    _data['industryIdentifiers'] = industryIdentifiers.map((e)=>e.toJson()).toList();
    _data['readingModes'] = readingModes.toJson();
    _data['pageCount'] = pageCount;
    _data['printType'] = printType;
    _data['categories'] = categories;
    _data['maturityRating'] = maturityRating;
    _data['allowAnonLogging'] = allowAnonLogging;
    _data['contentVersion'] = contentVersion;
    _data['panelizationSummary'] = panelizationSummary.toJson();
    _data['imageLinks'] = imageLinks.toJson();
    _data['language'] = language;
    _data['previewLink'] = previewLink;
    _data['infoLink'] = infoLink;
    _data['canonicalVolumeLink'] = canonicalVolumeLink;
    return _data;
  }
}

class IndustryIdentifiers {
  IndustryIdentifiers({
    required this.type,
    required this.identifier,
  });
  late final String type;
  late final String identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json){
    type = json['type'];
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['identifier'] = identifier;
    return _data;
  }
}

class ReadingModes {
  ReadingModes({
    required this.text,
    required this.image,
  });
  late final bool text;
  late final bool image;

  ReadingModes.fromJson(Map<String, dynamic> json){
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['image'] = image;
    return _data;
  }
}

class PanelizationSummary {
  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });
  late final bool containsEpubBubbles;
  late final bool containsImageBubbles;

  PanelizationSummary.fromJson(Map<String, dynamic> json){
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['containsEpubBubbles'] = containsEpubBubbles;
    _data['containsImageBubbles'] = containsImageBubbles;
    return _data;
  }
}

class ImageLinks {
  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });
  late final String smallThumbnail;
  late final String thumbnail;

  ImageLinks.fromJson(Map<String, dynamic> json){
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['smallThumbnail'] = smallThumbnail;
    _data['thumbnail'] = thumbnail;
    return _data;
  }
}