import 'package:flutter/material.dart';
import '../models/item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  // Sample items with image URLs (network). These could be local asset paths
  // as well depending on your choice.
  final List<Item> items = const [
    Item(
      id: '1',
      title: 'Inception',
      description: 'Un ladrón que roba secretos corporativos a través del intercambio de sueños.',
      imageUrl: 'assets/images/inception.jpg',
    ),
    Item(
      id: '2',
      title: 'Interstellar',
      description: 'Un equipo viaja a través de un agujero de gusano para intentar garantizar la supervivencia de la humanidad.',
      imageUrl: 'assets/images/interstellar.jpg',
    ),
    Item(
      id: '3',
      title: 'The Dark Knight',
      description: 'Batman se enfrenta al Joker, un genio criminal.',
      imageUrl: 'assets/images/darkknight.jpg',
    ),
    Item(
      id: '4',
      title: 'Pulp Fiction',
      description: 'Las vidas de dos sicarios, un boxeador y otras personas se entrelazan.',
      imageUrl: 'assets/images/pulpfiction.jpg',
    ),
    Item(
      id: '6',
      title: 'Nobody',
      description: 'Un hombre común se ve obligado a sacar a relucir habilidades olvidadas para proteger a su familia.',
      imageUrl: 'assets/images/nobody.jpg',
    ),
    Item(
      id: '7',
      title: 'The Suicide Squad',
      description: 'Un grupo de supervillanos es reclutado para una misión peligrosa en la que deben salvar al mundo — a su manera caótica.',
      imageUrl: 'assets/images/the_suicide_squad.jpg',
    ),
    Item(
      id: '8',
      title: 'Ad Astra',
      description: 'Un astronauta viaja al espacio profundo en busca de su padre y de respuestas sobre el destino de la humanidad.',
      imageUrl: 'assets/images/ad_astra.jpg',
    ),
    Item(
      id: '10',
      title: 'Gladiator',
      description: 'Un ex general romano busca venganza.',
      imageUrl: 'assets/images/gladiator.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text(
          'Películas disponibles',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'RobotoSlab',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Destacados:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Detalle disponible en Fase 3: ${item.title}'),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              item.imageUrl,
                              width: 80,
                              height: 120,
                              fit: BoxFit.cover,
                              // If the asset is missing or fails to load, show a safe placeholder
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 80,
                                  height: 120,
                                  color: Colors.black26,
                                  child: const Center(
                                    child: Icon(
                                      Icons.image_not_supported,
                                      color: Colors.white54,
                                      size: 28,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  item.description,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FaIcon(FontAwesomeIcons.play, color: Colors.green),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}