class ListellipsenineItemModel {
  dynamic block;
  dynamic tipoOp;
  dynamic amount;
  dynamic memo;
  dynamic from;
  dynamic to;
  dynamic timestamp;
  dynamic trxId;

  dynamic get getBlock => this.block;

  set setBlock(dynamic block) => this.block = block;

  get getTipoOp => this.tipoOp;

  set setTipoOp(tipoOp) => this.tipoOp = tipoOp;

  get getAmount => this.amount;

  set setAmount(amount) => this.amount = amount;

  get getMemo => this.memo;

  set setMemo(memo) => this.memo = memo;

  get getFrom => this.from;

  set setFrom(from) => this.from = from;

  get getTo => this.to;

  set setTo(to) => this.to = to;

  get getTimestamp => this.timestamp;

  set setTimestamp(timestamp) => this.timestamp = timestamp;

  get getTrxId => this.trxId;

  set setTrxId(trxId) => this.trxId = trxId;

  ListellipsenineItemModel(this.block, this.tipoOp, this.amount, this.memo,
      this.from, this.to, this.timestamp, this.trxId);
}
