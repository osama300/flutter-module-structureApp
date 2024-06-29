import 'dart:convert';
import 'dart:typed_data' show Uint8List;

class UploadedFile {
  const UploadedFile({
    this.name,
    this.key,
    this.bytes,
    this.height,
    this.width,
    this.blurHash,
  });

  final String? name;
  final String? key;
  final Uint8List? bytes;
  final double? height;
  final double? width;
  final String? blurHash;

  @override
  String toString() =>
      'UploadedFile(name: $name, bytes: ${bytes?.length ?? 0}, height: $height, width: $width, blurHash: $blurHash,)';

  String serialize() => jsonEncode(
        {
          'name': name,
          'key': key,
          'bytes': bytes,
          'height': height,
          'width': width,
          'blurHash': blurHash,
        },
      );

  static UploadedFile deserialize(String val) {
    final serializedData = jsonDecode(val) as Map<String, dynamic>;
    final data = {
      'name': serializedData['name'] ?? '',
      'key': serializedData['key'] ?? '',
      'bytes': serializedData['bytes'] ?? Uint8List.fromList([]),
      'height': serializedData['height'],
      'width': serializedData['width'],
      'blurHash': serializedData['blurHash'],
    };
    return UploadedFile(
      name: data['name'] as String,
      key: data['key'] as String,
      bytes: Uint8List.fromList(data['bytes'].cast<int>().toList()),
      height: data['height'] as double?,
      width: data['width'] as double?,
      blurHash: data['blurHash'] as String?,
    );
  }

  @override
  int get hashCode => Object.hash(
        name,
        bytes,
        height,
        width,
        blurHash,
      );

  @override
  bool operator ==(other) =>
      other is UploadedFile &&
      name == other.name &&
      bytes == other.bytes &&
      height == other.height &&
      width == other.width &&
      blurHash == other.blurHash;
}
