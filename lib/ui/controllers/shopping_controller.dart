import 'package:f_shopping_app_r2_template/ui/pages/product_list.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';

class ShoppingController extends GetxController {
  // lista de productos
  var entries = <Product>[].obs;
  // el valor total de la compra
  var total = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    entries.add(Product(0, "Toy car", 10));
    entries.add(Product(1, "Toy house", 20));
  }

  void calcularTotal() {
    int newTotal = 0;

    // TODO
    // calcular el valor total de los elementos en el carro de compras

    int total = 0;
    for (int i = 0; i < entries.length; i++) {
      total = total + entries[i].quantity * entries[i].price;

      total = newTotal;
    }
  }

  agregarProducto(id, int nuevaCantidad) {
    logInfo('agregarProducto $id');

    // TODO
    // Encontrar el elemento usando el id, revisar el método firstWhere de la lista

    entries.firstWhere((Product product) => id == id);

    // después obtener el index de ese elemento, revisar el método indexOf de la lista

    entries.indexOf(id);

    // después hacer el incremento en la cantidad

    print("posicion = " +
        id.toString() +
        " | valor = " +
        nuevaCantidad.toString());
    entries[id].quantity = nuevaCantidad + 1;

    // finalmente actualizar entries usando el indice y el elemento actualizado

    entries[0] = id;
    

    calcularTotal();
  }

  quitarProducto(id, int nuevaCantidad) {
    logInfo('quitarProducto $id');
    // TODO
    // similar a agregarProducto
    // validar cuando la cantidad es igual a cero
    calcularTotal();
  }
}
