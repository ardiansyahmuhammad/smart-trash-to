// ignore_for_file: avoid_print
class NewsData {
  final String? id;
  final String? title;
  final String? author;
  final String? content;
  final String? date;
  final String? urlToImage;

  NewsData({
    required this.id,
    required this.title,
    required this.author,
    required this.content,
    required this.date,
    required this.urlToImage,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) {
    return NewsData(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      content: json['content'],
      date: json['date'],
      urlToImage: json['urlToImage'],
    );
  }

  //we will use dummy data to generate the news.but then we can use third party api

  // static List<NewsData> beakingNewsData = [
  //   NewsData(
  //     "Pengelolaan Sampah yang Efisien di Kota Banda Aceh",
  //     "John Doe",
  //     "Kota Banda Aceh berhasil mencapai keberhasilan dalam pengelolaan sampah dengan pendekatan yang efisien dan ramah lingkungan.",
  //     "2023-03-15",
  //     "https://bandaacehkota.go.id/upload/2020/08/D8ECC8BE-86B1-4772-8108-FFFA0E93F4FC.jpeg",
  //   ),
  //   NewsData(
  //     "Inovasi Terbaru dalam Pengolahan Sampah Plastik",
  //     "Jane Smith",
  //     "Sebuah tim peneliti mengembangkan teknologi baru untuk mendaur ulang sampah plastik tanpa meninggalkan dampak negatif pada lingkungan.",
  //     "2023-03-14",
  //     "https://awsimages.detik.net.id/community/media/visual/2022/04/26/wow-kerajinan-keren-ini-dari-sampah-plastik-lho-3_169.jpeg?w=1200",
  //   ),
  //   NewsData(
  //     "Masyarakat Diajak Berpartisipasi dalam Gerakan Peduli Sampah",
  //     "Michael Johnson",
  //     "Sebuah komunitas lokal mengajak masyarakat untuk berpartisipasi dalam gerakan peduli sampah dengan melakukan aksi pembersihan lingkungan.",
  //     "2023-03-13",
  //     "https://tangselpos.id/storage/2023/07/mahasiswa-diajak-peduli-sampah-03072023-230941.jpg",
  //   ),
  //   NewsData(
  //     "Daur Ulang Kertas: Mengurangi Dampak Penebangan Hutan",
  //     "Sarah Lee",
  //     "Industri kertas diupayakan untuk menggunakan lebih banyak bahan daur ulang, membantu mengurangi dampak penebangan hutan.",
  //     "2023-03-12",
  //     "https://www.suarasurabaya.net/wp-content/uploads/2014/03/kk132265_clip10.jpg",
  //   ),
  //   NewsData(
  //     "Teknologi Canggih untuk Meningkatkan Pengelolaan Limbah Elektronik",
  //     "David Brown",
  //     "Sebuah perusahaan teknologi mengembangkan solusi canggih untuk mendaur ulang dan mengelola limbah elektronik secara efektif.",
  //     "2023-03-11",
  //     "https://example.com/image5.jpg",
  //   ),
  //   NewsData(
  //     "Panduan Mengelola Sampah Organik di Rumah Tangga",
  //     "Emily Watson",
  //     "Masyarakat diberikan panduan praktis untuk mengelola sampah organik di rumah tangga agar dapat dimanfaatkan sebagai pupuk.",
  //     "2023-03-10",
  //     "https://www.toyaartasejahtera.net/wp-content/uploads/2021/11/5-cara-mengelola-sampah-di-rumah.jpg",
  //   ),
  // ];
  // static List<NewsData> recentNewsData = [
  //   NewsData(
  //     "Proyek Ramah Lingkungan: Pembangunan TPA Terpadu",
  //     "Christopher Harris",
  //     "Pemerintah setempat meluncurkan proyek pembangunan Tempat Pembuangan Akhir (TPA) terpadu dengan sistem pengelolaan yang ramah lingkungan.",
  //     "2023-03-09",
  //     "https://awsimages.detik.net.id/api/wm/2023/05/01/suasana-di-tpa-cicabe-kota-bandung-senin-152023_169.jpeg?wid=60&w=650&v=1&t=jpeg",
  //   ),
  //   NewsData(
  //     "Penggunaan Plastik Sekali Pakai Dapat Menimbulkan Dampak Serius",
  //     "Jessica Turner",
  //     "Penelitian baru menunjukkan dampak serius penggunaan plastik sekali pakai terhadap lingkungan dan kesehatan manusia.",
  //     "2023-03-08",
  //     "https://1.bp.blogspot.com/-TxICPHrCRsU/XvrssiEZDsI/AAAAAAAAdZ0/tufzxV3SvVk7ZfStqb3-pOltV-9NMjqeQCLcBGAsYHQ/s1600/Screenshot_2020-06-30%2BDampak%2BNegatif%2BSampah%2BPlastik%252C%2BKesehatan%2BHingga%2BLingkungan.png",
  //   ),
  //   NewsData(
  //     "Pendekatan Inovatif dalam Mengurangi Sampah Plastik di Sungai",
  //     "Alexandra Miller",
  //     "Sebuah organisasi lingkungan menerapkan pendekatan inovatif untuk mengurangi sampah plastik yang mencemari sungai-sungai lokal.",
  //     "2023-03-07",
  //     "https://asset.kompas.com/crops/biDDu9iTJcHx0v9S9Sjk3ymy0_A=/0x0:0x0/750x500/data/photo/2023/07/10/64ab89938d9ba.jpeg",
  //   ),
  //   NewsData(
  //     "Program Pendidikan Lingkungan: Anak-anak Diajarkan Pentingnya Mendaur Ulang",
  //     "Amanda Johnson",
  //     "Sebuah sekolah di wilayah XYZ meluncurkan program pendidikan lingkungan di mana anak-anak diajarkan tentang pentingnya mendaur ulang untuk menjaga keberlanjutan lingkungan.",
  //     "2023-03-10",
  //     "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/radarsolo/2022/03/ajak-siswa-daur-ulang.jpg",
  //   ),
  // ];
}
