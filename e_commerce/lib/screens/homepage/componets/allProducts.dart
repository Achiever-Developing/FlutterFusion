import 'package:e_commerce/controller/cartController.dart';
import 'package:e_commerce/headers.dart';

Widget AllProducts({required context}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        ...List.generate(
          allData.length,
          (index) => Card(
            child: Column(
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
                        allData[index]['image'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        allData[index]['name'],
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        allData[index]['category'],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ ${allData[index]['price'].toString()}",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              Provider.of<FavoriteController>(context,
                                      listen: false)
                                  .changeFavorite(index: index);
                            },
                            icon: Provider.of<FavoriteController>(context)
                                    .favorite[index]
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Provider.of<cartController>(context, listen: false)
                        .changeCart(index: index, context: context);
                  },
                  child: Provider.of<cartController>(context).cart[index]
                      ? const Text('Remove from Cart')
                      : const Text('Add To Cart'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
