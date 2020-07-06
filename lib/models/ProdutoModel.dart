class Produto {
  final int idProduto;
  final String nome;
  final String categoria;
  final String imagePath;
  final double preco;
  final double desconto;
  final double ratings;

  Produto(
      {this.idProduto,
      this.nome,
      this.categoria,
      this.imagePath,
      this.preco,
      this.desconto,
      this.ratings});
}
