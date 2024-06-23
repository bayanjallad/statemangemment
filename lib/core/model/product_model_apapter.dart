import 'package:hive/hive.dart';

import 'products_model.dart';

class productTypeAdapter extends TypeAdapter<ProductModel> {
  @override
  ProductModel read(BinaryReader reader) {
    return ProductModel(
        id: reader.readInt(),
        name: reader.readString(),
        description: reader.readString(),
        price: reader.readDouble(),
        image: reader.readString(),
        brand: reader.readString());
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.description);
    writer.writeDouble(obj.price);
    writer.writeString(obj.image);
    writer.writeString(obj.brand);
  }
}
