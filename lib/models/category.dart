class Category{
  int? categoryId;
  String? categoryName;
  String? description;

  Category({this.categoryId, this.categoryName, this.description});

  @override
  String toString() {
    return 'Category{categoryId: $categoryId, categoryName: $categoryName, description: $description}';
  }
}