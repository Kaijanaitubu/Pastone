;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;

;オートスキップ拡張機能プラグイン
;[autoskip_ex]
;漫符プラグイン
[manpu_reset]
;ボイス機能拡張プラグイン
[voiceplay_ex_restore]
;環境光プラグイン
[ambient_light_restore]
;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]

