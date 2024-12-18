import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ims_app/viewmodels/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Consumer<ProductViewModel>(
      builder: (context,value,child) {
        return value.isLoading?Center(child: CircularProgressIndicator(),):SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 4.0,
                children: [
                  SizedBox(
                    width: width*0.1,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Product Name'
                      ),
                    ),
                  ),
                  DropdownMenu(
                    width: width*0.14,
                      hintText: 'Please select a category',
                      dropdownMenuEntries: value.categories?.map((e) =>DropdownMenuEntry(value: e.categoryId, label: e.categoryName??'Empty')).toList()??List.empty(),
                      onSelected: (v) {
                       value.selectedCategory=value.categories?[int.parse(v.toString())];
                      },
                  ),
                  DropdownMenu(
                    width: width*0.14,
                    hintText: 'Please select a supplier',
                    dropdownMenuEntries: value.supplier?.map((e) =>DropdownMenuEntry(value: e.supplierId, label: e.supplierName??'Empty')).toList()??List.empty(),
                    onSelected: (v) {
                      value.selectedSupplier=value.supplier?[int.parse(v.toString())];
                    },
                  )
                ],
              ),
              Gap(10),
              SizedBox(
                width: width*0.9,
                child: DataTable(
                    columns: value.columns,
                    rows: value.products!.map((e) => DataRow(cells: [
                      DataCell(
                          ListTile(title: Text(e.productId.toString()),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.category?.categoryName.toString()??'No Category found'),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.supplier?.supplierName.toString()??'No Supplier found'),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.productName.toString()),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.reorderLevel.toString()),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.stockQuantity.toString()),)
                      ),
                      DataCell(
                          ListTile(title: Text(e.unitPrice.toString()),)
                      )
                    ]),).toList()
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
