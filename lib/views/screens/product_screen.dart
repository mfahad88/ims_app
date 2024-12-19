import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ims_app/models/dropdown.dart';
import 'package:ims_app/viewmodels/product_viewmodel.dart';
import 'package:ims_app/views/widgets/m_drop_down_menu.dart';
import 'package:ims_app/views/widgets/m_text_field.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Consumer<ProductViewModel>(
        builder: (context,value,child) {
          return value.isLoading?const Center(child: CircularProgressIndicator(),):SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                Row(
                  children: [
                    const Gap(20),
                    SizedBox(
                      width: width*0.1,
                      child: mTextField(
                        hintText: 'Product Name',
                        keyboardType: TextInputType.text,
                        controller: value.productNameController,
                      ),
                    ),
                    const Gap(5),
                    mDropdownMenu(
                      width: width*0.14,
                      dropdownMenuEntries: value.categories?.map((e) =>Dropdown(value:e.categoryId, label: e.categoryName)).toList()??List.empty(),
                      hintText: 'Please select a category',
                      onSelected: (v) => value.selectedCategory=value.categories?[int.parse(v.toString())],),
                    const Gap(5),
                    mDropdownMenu(
                      width: width*0.14,
                      hintText: 'Please select a supplier',
                      dropdownMenuEntries: value.supplier?.map((e) =>Dropdown(value: e.supplierId, label: e.supplierName)).toList()??List.empty(),
                      onSelected: (v) => value.selectedSupplier=value.supplier?[int.parse(v.toString())],
                    ),
                    const Gap(5),
                    SizedBox(
                      width: width*0.1,
                      child: mTextField(
                        hintText: 'Unit Price',
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9\\.]"), )
                        ],

                        controller: value.unitPriceController,
                      ),
                    ),
                    const Gap(5),
                    SizedBox(
                      width: width*0.1,
                      child: mTextField(
                        hintText: 'Stock Quantity',
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                        ],
                        controller: value.stockQuantityController,
                      ),
                    ),
                    Gap(5.0),
                    SizedBox(
                      width: width*0.1,
                      child: mTextField(
                        hintText: 'Reorder Level',
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                        ],
                        controller: value.reorderLevelController,
                      ),
                    ),
                    const Gap(10),
                    FilledButton(onPressed: () => print('add'), child:  const Text('Add')),
                  ],
                ),

                const Gap(10),
                SizedBox(
                  width: width*0.9,
                  child: DataTable(
                      columns: value.columns,
                      rows: value.products!.map((e) => DataRow(
                          cells: [
                            DataCell(
                              ListTile(title: Text(e.productId.toString()),),

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
                            ),
                            DataCell(
                              Row(
                                children: [
                                  IconButton(onPressed: () => print(e.toString()), icon: const Icon(Icons.edit)),
                                  const Gap(10.0),
                                  IconButton(onPressed: () => print(e.toString()), icon: const Icon(Icons.delete,color: Colors.red,)),
                                ],
                              )
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
