class ListhiveItemModel {
  dynamic _tipoMoneda;

  dynamic _usdValue;

  dynamic _valor;

  getTipoMoneda() {
    return _tipoMoneda;
  }

  getValor() {
    return _valor;
  }

  getUsdValue() {
    return _usdValue;
  }

  ListhiveItemModel(this._tipoMoneda, this._valor, this._usdValue);
}
