import 'package:e_commerce/headers.dart';

Widget FavoriteProducts({required context}) {
  return SingleChildScrollView(
    child: Column(
      children: List.generate(
        favoriteProducts.length,
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
                      favoriteProducts[index]['image'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        favoriteProducts[index]['name'],
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        favoriteProducts[index]['category'],
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "\$ ${favoriteProducts[index]['price'].toString()}",
                        overflow: TextOverflow.ellipsis,
                      ),
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
