import 'package:flutter/material.dart';
import 'package:ldsw_widgets/screens/catalog/catalog_item.dart';
import 'package:ldsw_widgets/services/pokemon_service.dart';
import 'package:ldsw_widgets/types/get_pokemon_response.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  CatalogScreenState createState() => CatalogScreenState();
}

class CatalogScreenState extends State<CatalogScreen> {
  late final _pagingController = PagingController<int, Result>(
    getNextPageKey: (state) => (state.keys?.last ?? 0) + 1,
    fetchPage: (pageKey) => PokemonService().getPokemonList(page: pageKey),
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text("Catálogo"),
        centerTitle: true,
      ),
      body: PagingListener(
        controller: _pagingController,
        builder: (context, state, fetchNextPage) => PagedListView<int, Result>(
          state: state,
          fetchNextPage: fetchNextPage,
          builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) =>
                  CatalogItem(pokemon: item)),
        ),
      ),
    );
  }
}
