class ReceiptModel {
  dynamic amount;
  dynamic block;
  dynamic from;
  dynamic memo;
  dynamic timestamp;
  dynamic tipoOp;
  dynamic to;
  dynamic trxId;
  dynamic activeUsername;

  dynamic get getActiveUsername => this.activeUsername;

  set setActiveUsername(dynamic activeUsername) =>
      this.activeUsername = activeUsername;

  dynamic get getAmount => this.amount;

  set setAmount(dynamic amount) => this.amount = amount;

  dynamic get getBlock => this.block;

  set setBlock(dynamic block) => this.block = block;

  dynamic get getFrom => this.from;

  set setFrom(dynamic from) => this.from = from;

  dynamic get getMemo => this.memo;

  set setMemo(dynamic memo) => this.memo = memo;

  dynamic get getTimestamp => this.timestamp;

  set setTimestamp(dynamic timestamp) => this.timestamp = timestamp;

  dynamic get getTipoOp => this.tipoOp;

  set setTipoOp(dynamic tipoOp) => this.tipoOp = tipoOp;

  dynamic get getTo => this.to;

  set setTo(dynamic to) => this.to = to;

  dynamic get getTrxId => this.trxId;

  set setTrxId(dynamic trxId) => this.trxId = trxId;

  ReceiptModel();
}
