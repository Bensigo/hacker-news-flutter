class ItemModel {
  final int id;
  final bool deleted;
  final String type;
  final String by;
  final int time;
  final String text;
  final bool dead;
  final int parent;
  final List<dynamic> kids;
  final String url;
  final int score;
  final String title;
  final int descendants;

  ItemModel.fromJson(Map<String, dynamic> paserdJson)
      : id = paserdJson['id'],
        deleted = paserdJson['deleted'],
        type = paserdJson['type'],
        by = paserdJson['id'],
        time = paserdJson['time'],
        text = paserdJson['text'],
        dead = paserdJson['dead'],
        parent = paserdJson['parent'],
        kids = paserdJson['kids'],
        url = paserdJson['url'],
        score = paserdJson['score'],
        title = paserdJson['title'],
        descendants = paserdJson['descendant'];
}
