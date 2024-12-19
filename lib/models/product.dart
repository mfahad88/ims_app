import 'package:ims_app/models/category.dart';
import 'package:ims_app/models/supplier.dart';

class Product{
  int productId;
  String productName;
  int categoryId;
  int supplierId;
  double unitPrice;
  int stockQuantity;
  int reorderLevel;
  Category? category;
  Supplier? supplier;

  Product(
      {required this.productId,
      required this.productName,
      required this.categoryId,
      required this.supplierId,
      required this.unitPrice,
      required this.stockQuantity,
      required this.reorderLevel,
        this.category,
        this.supplier
      });

  @override
  String toString() {
    return 'Product{productId: $productId, productName: $productName, categoryId: $categoryId, supplierId: $supplierId, unitPrice: $unitPrice, stockQuantity: $stockQuantity, reorderLevel: $reorderLevel, category: $category, supplier: $supplier}';
  }
}