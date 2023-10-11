// // import 'package:metro2/Metrolines/magenta.dart';
// // import 'package:metro2/Metrolines/yellow.dart';
// // import 'Metrolines/Red.dart';
// // import 'Metrolines/blue.dart';
// // import 'Metrolines/bluebranch.dart';
// // import 'Metrolines/green.dart';
// // import 'Metrolines/greenbranch.dart';
// // import 'Metrolines/orange.dart';
// // import 'Metrolines/pinkbranchline.dart';
// // import 'Metrolines/pinkmainline.dart';
// // import 'Metrolines/purple.dart';
// //
// // List<String> shortestPath = [];
// //
// // class Graph {
// //   late Map<String, List<String>> _adjacencyList;
// //
// //   Graph() {
// //     _adjacencyList = {};
// //   }
// //
// //   void addEdge(String u, String v) {
// //     if (!_adjacencyList.containsKey(u)) {
// //       _adjacencyList[u] = [];
// //     }
// //     _adjacencyList[u]!.add(v);
// //
// //     if (!_adjacencyList.containsKey(v)) {
// //       _adjacencyList[v] = [];
// //     }
// //     _adjacencyList[v]!.add(u);
// //   }
// //
// //   void dfs(String startVertex, String des, List<String> find) {
// //     Set<String> visited = {};
// //     List<String> path = [];
// //
// //     _dfsHelper(startVertex, visited, des, find, path);
// //   }
// //
// //   void _dfsHelper(String vertex, Set<String> visited, String des,
// //       List<String> find, List<String> path) {
// //     visited.add(vertex);
// //     find.add(vertex);
// //
// //     if (des == vertex) {
// //       if (shortestPath.isEmpty || path.length < shortestPath.length) {
// //         shortestPath = List.from(path);
// //       }
// //     }
// //
// //     if (_adjacencyList.containsKey(vertex)) {
// //       for (String neighbor in _adjacencyList[vertex]!) {
// //         if (!visited.contains(neighbor)) {
// //           path.add(neighbor);
// //           _dfsHelper(neighbor, visited, des, find, path);
// //           path.removeLast();
// //         }
// //       }
// //     }
// //
// //     visited.remove(vertex);
// //     find.removeLast();
// //   }
// // }
// //
// // List<String> search_route(String source, String des) {
// //   // Create graph instance
// //   Graph g = Graph();
// //   shortestPath.clear();
// //
// //   // Add edges for different metro lines
// //   List<String> magneta = Magentaline();
// //   for (int i = 0; i < magneta.length - 1; i++) {
// //     g.addEdge(magneta[i], magneta[i + 1]);
// //   }
// //
// //   List<String> bluemainline = Blueline();
// //   for (int i = 0; i < bluemainline.length - 1; i++) {
// //     g.addEdge(bluemainline[i], bluemainline[i + 1]);
// //   }
// //
// //   List<String> bluebranchline = BlueBranchline();
// //   for (int i = 0; i < bluebranchline.length - 1; i++) {
// //     g.addEdge(bluebranchline[i], bluebranchline[i + 1]);
// //   }
// //
// //   List<String> greenmainline = GreenMainline();
// //   for (int i = 0; i < greenmainline.length - 1; i++) {
// //     g.addEdge(greenmainline[i], greenmainline[i + 1]);
// //   }
// //
// //   List<String> greenBranchline = GreenBranchline();
// //   for (int i = 0; i < greenBranchline.length - 1; i++) {
// //     g.addEdge(greenBranchline[i], greenBranchline[i + 1]);
// //   }
// //
// //   List<String> orangeline = Orangeline();
// //   for (int i = 0; i < orangeline.length - 1; i++) {
// //     g.addEdge(orangeline[i], orangeline[i + 1]);
// //   }
// //
// //   List<String> pinkline = pinkbranchline();
// //   for (int i = 0; i < pinkline.length - 1; i++) {
// //     g.addEdge(pinkline[i], pinkline[i + 1]);
// //   }
// //
// //   // List<String> pinkmainline =pink();
// //   // for (int i = 0; i < pinkmainline.length - 1; i++) {
// //   //   g.addEdge(pinkmainline[i],pinkmainline[i + 1]);
// //   // }
// //
// //   List<String> yellowmainline = Yellowline();
// //   for (int i = 0; i < yellowmainline.length - 1; i++) {
// //     g.addEdge(yellowmainline[i], yellowmainline[i + 1]);
// //   }
// //
// //   List<String> purpleline = Purpleline();
// //   for (int i = 0; i < purpleline.length - 1; i++) {
// //     g.addEdge(purpleline[i], purpleline[i + 1]);
// //   }
// //
// //   List<String> redline = redine();
// //   for (int i = 0; i < redline.length - 1; i++) {
// //     g.addEdge(redline[i], redline[i + 1]);
// //   }
// //
// //   List<String> find = [];
// //   g.dfs(source, des, find);
// //
// //   print('Shortest path from $source to $des: $shortestPath');
// //   print(shortestPath);
// //   return shortestPath;
// //
// //
// //
// // }
//
//
// import 'package:metro2/Metrolines/magenta.dart';
// import 'package:metro2/Metrolines/yellow.dart';
// import 'Metrolines/Red.dart';
// import 'Metrolines/blue.dart';
// import 'Metrolines/bluebranch.dart';
// import 'Metrolines/green.dart';
// import 'Metrolines/greenbranch.dart';
// import 'Metrolines/orange.dart';
// import 'Metrolines/pinkbranchline.dart';
// import 'Metrolines/pinkmainline.dart';
// import 'Metrolines/purple.dart';
// import 'Metrolines/violet.dart';
// class Graph {
//   late Map<String, List<Map<String, int>>> _adjacencyList;
//
//   Graph() {
//     _adjacencyList = {};
//   }
//
//   void addEdge(String u, String v, int weight) {
//     if (!_adjacencyList.containsKey(u)) {
//       _adjacencyList[u] = [];
//     }d
//     _adjacencyList[u]!.add({v: weight});
//
//     if (!_adjacencyList.containsKey(v)) {
//       _adjacencyList[v] = [];
//     }
//     _adjacencyList[v]!.add({u: weight});
//   }
//
//   List<String> dijkstra(String source, String destination) {
//     Map<String, int> distances = {};
//     Map<String, String> previous = {};
//     List<String> unvisited = [];
//
//     _adjacencyList.forEach((vertex, edges) {
//       if (vertex == source) {
//         distances[vertex] = 0;
//       } else {
//         distances[vertex] = 1000000;
//       }
//
//       previous[vertex] = '';
//       unvisited.add(vertex);
//     });
//
//
//     while (unvisited.isNotEmpty) {
//       String current = _getMinimumDistanceVertex(distances, unvisited);
//       unvisited.remove(current);
//
//       if (current == destination) {
//         break;
//       }
//
//       if (distances[current] == 1000000) {
//         break;
//       }
//
//       if (_adjacencyList.containsKey(current)) {
//         for (Map<String, int> neighbor in _adjacencyList[current]!) {
//           String neighborVertex = neighbor.keys.first;
//           int weight = neighbor.values.first;
//           int alt = distances[current]! + weight;
//
//           if (alt < distances[neighborVertex]!) {
//             distances[neighborVertex] = alt;
//             previous[neighborVertex] = current;
//           }
//         }
//       }
//     }
//
//     return _shortestPath(source, destination, previous);
//   }
//
//   String _getMinimumDistanceVertex(
//       Map<String, int> distances, List<String> unvisited) {
//     int minDistance = 1000000;
//     String minVertex = '';
//
//     unvisited.forEach((vertex) {
//       if (distances[vertex]! < minDistance) {
//         minDistance = distances[vertex]!;
//         minVertex = vertex;
//       }
//     });
//
//     return minVertex;
//   }
//
//   List<String> _shortestPath(
//       String source, String destination, Map<String, String> previous) {
//     List<String> path = [];
//     String current = destination;
//
//     while (current != '') {
//       path.insert(0, current);
//       current = previous[current]!;
//     }
//
//     if (path.first == source) {
//       return path;
//     }
//
//     return [];
//   }
// }
//
// List<String> search_route(String source, String destination) {
//   // Create graph instance
//   Graph g = Graph();
//
//   // Add edges for different metro lines
//   List<String> magneta = Magentaline();
//   for (int i = 0; i < magneta.length - 1; i++) {
//     g.addEdge(magneta[i], magneta[i + 1], 1);
//   }
//
//   List<String> bluemainline = Blueline();
//   for (int i = 0; i < bluemainline.length - 1; i++) {
//     g.addEdge(bluemainline[i], bluemainline[i + 1], 1);
//   }
//
//   List<String> bluebranchline = BlueBranchline();
//   for (int i = 0; i < bluebranchline.length - 1; i++) {
//     g.addEdge(bluebranchline[i], bluebranchline[i + 1], 1);
//   }
//
//   List<String> greenmainline = GreenMainline();
//   for (int i = 0; i < greenmainline.length - 1; i++) {
//     g.addEdge(greenmainline[i], greenmainline[i + 1], 1);
//   }
//
//   List<String> greenBranchline = GreenBranchline();
//   for (int i = 0; i < greenBranchline.length - 1; i++) {
//     g.addEdge(greenBranchline[i], greenBranchline[i + 1], 1);
//   }
//
//   List<String> orangeline = Orangeline();
//   for (int i = 0; i < orangeline.length - 1; i++) {
//     g.addEdge(orangeline[i], orangeline[i + 1], 1);
//   }
//
//   List<String> pinkline = pinkbranchline();
//   for (int i = 0; i < pinkline.length - 1; i++) {
//     g.addEdge(pinkline[i], pinkline[i + 1], 1);
//   }
//
//   List<String> pinkmainline = pink();
//   for (int i = 0; i < pinkmainline.length - 1; i++) {
//     g.addEdge(pinkmainline[i], pinkmainline[i + 1], 1);
//   }
//
//
//   List<String> yellowmainline = Yellowline();
//   for (int i = 0; i < yellowmainline.length - 1; i++) {
//     g.addEdge(yellowmainline[i], yellowmainline[i + 1], 1);
//   }
//
//   List<String> purpleline = Purpleline();
//   for (int i = 0; i < purpleline.length - 1; i++) {
//     g.addEdge(purpleline[i], purpleline[i + 1], 1);
//   }
//
//   List<String> redline = redine();
//   for (int i = 0; i < redline.length - 1; i++) {
//     g.addEdge(redline[i], redline[i + 1], 1);
//   }
//
//   List<String>violet=violetLine();
//   for (int i = 0; i < violet.length - 1; i++) {
//     g.addEdge(violet[i], violet[i + 1], 1);
//   }
//
//   List<String> shortestPath=[];
//   shortestPath.add(source);
//
//   shortestPath = g.dijkstra(source, destination);
//
//   // print('Shortest path from $source to $destination: $shortestPath');
//
//   print(shortestPath);
//   return shortestPath;
// }
