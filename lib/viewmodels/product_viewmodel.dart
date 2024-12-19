import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

import '../core/database/database_manager.dart';
import '../models/category.dart';
import '../models/product.dart';
import '../models/supplier.dart';

class ProductViewModel extends ChangeNotifier{
  List<Product>? products=[];
  List<Category>? categories=[];
  List<Supplier>? supplier=[];
  List<DataColumn> columns=const [DataColumn(label: Text('Id'),), DataColumn(label: Text('Category Name')), DataColumn(label: Text('Supplier Name')), DataColumn(label: Text('Product Name')), DataColumn(label: Text('Reorder Level')), DataColumn(label: Text('Stock Quantity')), DataColumn(label: Text('Unit Price')),DataColumn(label: Text('Actions'))];
  Category? _selectedCategory;
  Supplier? _selectedSupplier;
  TextEditingController productNameController=TextEditingController();
  TextEditingController unitPriceController=TextEditingController();
  TextEditingController stockQuantityController=TextEditingController();
  TextEditingController reorderLevelController=TextEditingController();

  Supplier? get selectedSupplier => _selectedSupplier;

  set selectedSupplier(Supplier? value) {
    _selectedSupplier = value;
    notifyListeners();
  }

  Category? get selectedCategory => _selectedCategory;

  set selectedCategory(Category? value) {
    _selectedCategory = value;
    notifyListeners();
  }
  bool isLoading=false;

  Future<void> addProduct() async {
    var db=DatabaseManager();
    MySqlConnection? conn=await db.createConnection();
    if(products?.isNotEmpty??false){
      if(products?.where((element) => element.productName.toLowerCase()==productNameController.text.toLowerCase(),).first!=null){
        conn?.query('Update products SET unit_price = ${unitPriceController.text}, stock_quantity=select stock_quantity from products where lower(product_name)=lower(${productNameController.text.trim()})+${unitPriceController.text} where product_name=${productNameController.text}');
      }else{

      }
    }
  }
  Future<void> fetchProducts() async {
    var db=DatabaseManager();
    MySqlConnection? conn=await db.createConnection();
    try{

      isLoading=true;
      var result =await  conn?.query('SELECT * FROM products as p,categories as c,suppliers as s where p.category_id=c.category_id and p.supplier_id=s.supplier_id');
      products?.clear();
      result?.forEach((element) {
        ResultRow data=element;

        products?.add(
            Product(
                productId: data['product_id'],
                categoryId:data['category_id'],
                productName: data['product_name'],
                reorderLevel: data['reorder_level'],
                stockQuantity: data['stock_quantity'],
                supplierId: data['supplier_id'],
                unitPrice: data['unit_price'],
                category: Category(categoryId: data['category_id'], categoryName: data['category_name']),
                supplier: Supplier(supplierId: data['supplier_id'], supplierName: data['supplier_name'], contactPerson: data['contact_person'], phoneNumber: data['phone_number'], email: data['email'])

            )
        );
      },);

      conn?.close();
    }catch (e){
      throw Exception(e);
    }finally{

      isLoading=false;
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        notifyListeners();
      },);

    }
  }

  Future<void> fetchCategories() async {
    var db=DatabaseManager();
    MySqlConnection? conn=await db.createConnection();
    try{

      var result =await  conn?.query('SELECT * FROM categories');
      categories?.clear();
      result?.forEach((element) {
        ResultRow data=element;
        categories?.add(Category(categoryId: data['category_id'], categoryName: data['category_name']));
      },);
      conn?.close();
    }catch (e){
      throw Exception(e);
    }finally{

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        notifyListeners();
      },);

    }
  }

  Future<void> fetchSuppliers() async {
    var db=DatabaseManager();
    MySqlConnection? conn=await db.createConnection();
    try{

      var result =await  conn?.query('SELECT * FROM suppliers');
      supplier?.clear();
      result?.forEach((element) {
        ResultRow data=element;
        supplier?.add(
            Supplier(supplierId: data['supplier_id'], supplierName: data['supplier_name'], contactPerson: data['contact_person'], phoneNumber: data['phone_number'], email: data['email'])
        );
      },);
      conn?.close();
    }catch (e){
      throw Exception(e);
    }finally{

      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        notifyListeners();
      },);

    }
  }
}