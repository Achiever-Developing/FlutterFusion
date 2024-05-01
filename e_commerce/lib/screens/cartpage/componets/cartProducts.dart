import 'package:e_commerce/controller/cartController.dart';
import 'package:e_commerce/controller/totalController.dart';
import 'package:e_commerce/headers.dart';

Widget CartProducts({required context}) {
  return SingleChildScrollView(
    child: Column(
      children: List.generate(
        cartProducts.length,
        (index) => Card(
          child: Row(
            children: [
              Container(
                height: 200,
                width: 150,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                      cartProducts[index]['image'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        cartProducts[index]['name'],
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        cartProducts[index]['category'],
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "\$ ${cartProducts[index]['price'].toString()}",
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Provider.of<CounterController>(context,
                                      listen: false)
                                  .decreaseCounter(index: index);
                              // Provider.of<TotalController>(context,
                              //         listen: false)
                              //     .subTotalF(index: index);
                            },
                            style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                CircleBorder(),
                              ),
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                              "${Provider.of<CounterController>(context).Counter[index]}"),
                          ElevatedButton(
                            onPressed: () {
                              Provider.of<CounterController>(context,
                                      listen: false)
                                  .increaseCounter(index: index);
                            },
                            style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                CircleBorder(),
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
