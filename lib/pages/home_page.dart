import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/app_cubits.dart';
import '../model/api_list_data_model.dart';
import '../cubit/app_cubit_states.dart';
import '../pages/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home of App"),
      ),
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          // ################
          //  LOADED STATE
          // ################

          if (state is LoadedState) {
            List<ApiListEntryDataModel> apiData = state.apiData;
            // print(info.length);
            return ListView.builder(
              itemCount: apiData.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailPage(e: apiData[index]),
                        ),
                      );
                    },
                    child: Card(
                      color: const Color.fromARGB(255, 202, 234, 185),
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      child: ListTile(
                        leading: const Icon(Icons.access_alarm_rounded),
                        title: Text(
                          apiData[index].api,
                          style: const TextStyle(fontSize: 15),
                        ),
                        subtitle: Text(
                          apiData[index].description,
                          style: const TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }

          // ################
          //  ERROR STATE
          // ################

          if (state is LoadingError) {
            return const Center(
              child: Text(
                "Error",
                style: TextStyle(color: Colors.black),
              ),
            );
          }

          return Container();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
