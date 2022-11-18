import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_food/models/Product.dart';
import 'products_manager.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';

  EditProductScreen(
    Product? product, {
    super.key,
  }) {
    if (product == null) {
      this.product = Product(
        id: null,
        title: '',
        price: 0,
        image: "assets/images/dau_da_xay.png",
        type: "Đá xay",
        description:
            " Trà sữa là loại thức uống đa dạng được tìm thấy ở nhiều nền văn hóa, bao gồm một vài cách kết hợp giữa trà và sữa. Các loại thức uống khác nhau tùy thuộc vào lượng thành phần chính của mỗi loại, phương pháp pha chế, và các thành phần khác được thêm vào (thay đổi từ đường hoặc mật ong thành muối hoặc bạch đậu khấu-thảo quả). Bột trà sữa pha sẵn là một sản phẩm được sản xuất hàng ",
      );
    } else {
      this.product = product;
    }
  }
  late final Product product;

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _imageController = TextEditingController();
  final _imageFocusNode = FocusNode();
  final _editForm = GlobalKey<FormState>();
  late Product _editedProduct;
  var _isLoading = false;

  bool _isValidimage(String value) {
    return (value.startsWith('http') || value.startsWith('https')) &&
        (value.endsWith('.png') ||
            value.endsWith('.jpg') ||
            value.endsWith('.jpeg'));
  }

  @override
  void initState() {
    _imageFocusNode.addListener(() {
      if (!_imageFocusNode.hasFocus) {
        if (!_isValidimage(_imageController.text)) {
          return;
          // anh hop le -> ve lai man hinh de hien preview

        }
        setState(() {});
      }
    });
    _editedProduct = widget.product;

    _imageController.text = _editedProduct.image;
    super.initState();
  }

  @override
  void dispose() {
    _imageController.dispose();
    _imageFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _editForm,
                child: ListView(
                  children: <Widget>[
                    buildTitleField(),
                    buildPriceField(),
                    //  buildDescriptionField(),
                    buildProductPreview(),
                  ],
                ),
              ),
            ),
    );
  }

  //ham buildTitleField();
  TextFormField buildTitleField() {
    return TextFormField(
      initialValue: _editedProduct.title,
      decoration: const InputDecoration(labelText: 'Title'),
      textInputAction: TextInputAction.next,
      autofocus: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please provide a value.';
        }
        return null;
      },
      onSaved: (value) {
        _editedProduct = _editedProduct.copyWith(title: value);
      },
    );
  }

  //ham buildPriceField();
  TextFormField buildPriceField() {
    return TextFormField(
      initialValue: _editedProduct.price.toString(),
      decoration: const InputDecoration(labelText: 'Price'),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a price';
        }
        if (double.tryParse(value) == null) {
          return 'Please enter a valid number.';
        }
        if (double.parse(value) <= 0) {
          return 'Please enter a number greater than zero.';
        }
        return null;
      },
      onSaved: (value) {
        _editedProduct = _editedProduct.copyWith(price: double.parse(value!));
      },
    );
  }

  //ham buildProductPreview();
  Widget buildProductPreview() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(
            top: 8,
            right: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: _imageController.text.isEmpty
              ? const Text('Enter a URL')
              : FittedBox(
                  child: Image.network(
                    _imageController.text,
                    fit: BoxFit.cover,
                  ),
                ),
        ),
        Expanded(
          child: buildimageField(),
        )
      ],
    );
  }

  TextFormField buildimageField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Image URL'),
      keyboardType: TextInputType.url,
      textInputAction: TextInputAction.done,
      controller: _imageController,
      focusNode: _imageFocusNode,
      onFieldSubmitted: (value) => _saveForm(),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter an image URL.';
        }
        return null;
      },
      onSaved: (value) {
        _editedProduct = _editedProduct.copyWith(image: value);
      },
    );
  }

  //
  Future<void> _saveForm() async {
    final isValid = _editForm.currentState!.validate();
    if (!isValid) {
      return;
    }
    _editForm.currentState!.save();

    setState(() {
      _isLoading = true;
    });
    print(999);
    try {
      final productsManager = context.read<ProductsManager>();
      if (_editedProduct.id != null) {
        await productsManager.updateProduct(_editedProduct);
      } else {
        await productsManager.addProduct(_editedProduct);
      }
    } catch (error) {
      await showErrorDialog(context, 'Something went wrong.');
    }
    setState(() {
      _isLoading = false;
    });
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> showErrorDialog(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('An Error Occurred'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }
}
