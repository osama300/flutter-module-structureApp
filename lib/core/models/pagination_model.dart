class PaginationModel {
  final int totalItems;
  final int perPage;
  final int currentPage;
  final int lastPage;

  PaginationModel({
    required this.totalItems,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json) {
    return PaginationModel(
      totalItems: json['total_items'] ?? 0,
      perPage: json['per_page'] ?? 0,
      currentPage: json['current_page'] ?? 0,
      lastPage: json['last_page'] ?? 0,
    );
  }
}
