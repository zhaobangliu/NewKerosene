# 提供するデータの説明

以下のcsvは過去の分析プロジェクトで使用したデータになります。

## センサー履歴

1-sensor-histories.csvが該当します。

sensor_id: センサーID: 数値
customer_id: 顧客ID: 数値
tank\_type_id: タンクタイプID: 数値
received_at: 取得時刻: YYYY-MM-DD HH:mm:ss
message: 計測値: 数値 (mm)

概ね3時間おきに受信していますが、テストで発生した20秒おき程度の高頻度アクセスがあります。

## 補給履歴

2-supply-histories-with-sensor.csvおよび3-supply-histories-without-sensor.csvが該当します。

customer_id: 顧客ID: 数値
tank\_type_id: タンクタイプID: 数値
supplied_at: 補給時刻: YYYY-MM-DD HH:mm:ss
volume: 補給量: 数値 (リットル)
purpose: 目的: 空欄=一般,R=ロードヒーティング,融=融雪器向け

## タンクタイプ

4-tank-types.csvが該当します。

tank\_type_id: タンクタイプID: 数値
area: 外寸底面積: m^2
height: 外寸高さ: m
volume: 標準容量: リットル

値が0の部分はデータが入手できなかったものになります。

---

# Q & A

* 補給0のデータについて
  - 補給が行われなかったことを表します。
* 同日中、もしくはかなり近い間隔で給油を行うケースはありますか?また、それはどんな事情が想定されますか?
  - 配送車に積載した灯油が途中でなくなり、再度補給を行った場合が考えられます
* 残量が十分なために給油しなかった場合、残量の目安があればご教示頂けますか?
  - タンクへの補給は配送員の経験に依存する部分が大きく、また補給中にタンク残量が確認できないケースも多いため、目安になる残量はありません。

