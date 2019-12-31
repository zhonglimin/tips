|    字段     |  类型   |   意义   | 长度 | 其他 |
| :---------: | :-----: | :------: | :--: | ---- |
|     lid     |   int   | 唯一标识 |      |      |
|    title    | varchar |   标题   |      |      |
| description | varchar |   描述   |      |      |
|   addtime   | varchar | 添加时间 |      |      |
|  language   | varchar |   语言   |      |      |
|    name     | varchar |   名称   |      |      |
|             |         |          |      |      |

   tab_language       语言描述





|    字段    |  类型   |   意义   | 长度 | 其他 |
| :--------: | :-----: | :------: | :--: | ---- |
|    tfid    |   int   | 唯一标识 |      |      |
|  tf_name   | varchar |   名称   |      |      |
| tf_addtime | varchar | 添加时间 |      |      |
|            |         |          |      |      |

​    tab_tips_first   tips 一级分类







|     字段      |  类型   |        意义        | 长度 | 其他                    |
| :-----------: | :-----: | :----------------: | :--: | ----------------------- |
|     tsid      |   int   |      唯一标识      |      |                         |
|     tfid      |   int   |    所属一级分类    |      |                         |
|  tf_addtime   | varchar |      添加时间      |      |                         |
| tf_updatetime | varchar |      修改时间      |      |                         |
|    tf_name    | varchar |        名称        |      |                         |
|   ts_order    |   int   | 在一级分类里的顺序 |      |                         |
|   ts_action   | varchar |      用途动作      |      | 修改， 删除等           |
|  ts_platform  | varchar |        平台        |      |                         |
|   ts_region   | varchar |        地区        |      |                         |
|  ts_country   | varchar |    设备发行国家    |      |                         |
|  ts_project   | varchar |    终端项目名称    |      |                         |
|  ts_imageId   |   int   |  绑定的image表 id  |      |                         |
|    ts_tmid    |   int   |    绑定的模板id    |      |                         |
| ts_deviceIds  | varchar |    绑定的设备id    | ???? | 为{}时 符合其他条件全配 |
|   ts_status   | varchar |        状态        |      | 上线 下线。             |
|               |         |                    |      |                         |

​    tab_tips_secend   tips 二级分类(tips详细)





黑 白名单  的设计







|     字段      |  类型   |   意义   | 长度 | 其他   |
| :-----------: | :-----: | :------: | :--: | ------ |
|     tiid      |   int   | 唯一标识 |      |        |
|  ti_addtime   | varchar | 添加时间 |      |        |
| ti_updatetime | varchar | 修改时间 |      |        |
|    ti_name    | varchar | 模板名称 |      |        |
|  ti_descImgs  | varchar |   横图   |      | 可多个 |
| ti_imgVerUrl  | varchar |   竖图   |      |        |
|   ti_imgUrl   | varchar |  描述图  |      |        |
|               |         |          |      |        |

​    tab_tips_image   tips 图片表  S3  CND   

状态   



|     字段      |  类型   |   意义   | 长度 | 其他 |
| :-----------: | :-----: | :------: | :--: | ---- |
|     tmid      |   int   | 唯一标识 |      |      |
|  tm_addtime   | varchar | 添加时间 |      |      |
| tm_updatatime | varchar | 修改时间 |      |      |
|    tm_name    | varchar | 模板名称 |      |      |
|    tm_uri     | varchar | 模板地址 |      |      |
|               |         |          |      |      |

​    tab_tips_mode   tips 显示模板











|    字段    |  类型   |    意义    | 长度 | 其他 |
| :--------: | :-----: | :--------: | :--: | ---- |
|    tjid    |   int   |  唯一标识  |      |      |
|    tsid    |   int   | 二级分类id |      |      |
| tj_addtime | varchar |  生成时间  |      |      |
|  tj_name   | varchar |    名称    |      |      |
|   tj_uri   | varchar |   js地址   |      |      |
|            |         |            |      |      |

​    tab_tips_js   tips 生成的js表









|   字段   |  类型   |    意义    | 长度 | 其他           |
| :------: | :-----: | :--------: | :--: | -------------- |
|  tstid   |   int   |  唯一标识  |      |                |
|   tsid   |   int   | 二级分类id |      |                |
| tst_name | varchar |  接口名称  |      | 与tips名称对应 |
| tst_num  |   int   |  调用次数  |      |                |
| tst_type | varchar |  调用类型  |      | 测试， 正式    |
|          |         |            |      |                |

​    tab_statistics   tips 接口统计









|    字段     |  类型   |   意义   | 长度 | 其他 |
| :---------: | :-----: | :------: | :--: | ---- |
|    tuid     |   int   | 唯一标识 |      |      |
|   tu_name   | varchar |   名字   |      |      |
|  tu_itcode  | varchar |  itcode  |      |      |
| tu_password | varchar |   密码   |      |      |
|  tu_power   | varchar | 项目权限 |      |      |
| tu_addtime  | varchar | 添加时间 |      |      |
|             |         |          |      |      |

​    tab_user   用户表





|     字段     |  类型   |     意义     | 长度 | 其他     |
| :----------: | :-----: | :----------: | :--: | -------- |
|     trid     |   int   |   唯一标识   |      |          |
|  tr_content  | varchar |   请求接口   |      | 完整请求 |
|  tr_result   | varchar | 请求返回结果 |      |          |
| tr_starttime | varchar |   请求时间   |      |          |
|  tr_endtime  | varchar |   返回时间   |      |          |
|   tr_time    | varchar |   使用时间   |      |          |
|              |         |              |      |          |

​    tab_request   请求日志











|  字段   |  类型   |     意义     | 长度 | 其他 |
| :-----: | :-----: | :----------: | :--: | ---- |
|  tlid   |   int   |   唯一标识   |      |      |
| tu_type | varchar |   操作类型   |      |      |
| tu_user | varchar | 操作人itcode |      |      |
| tu_tsid |   int   |  操作的tips  |      |      |
| tu_time | varchar |   操作时间   |      |      |
|         |         |              |      |      |

​    tab_log   操作日志







|    字段    |  类型   |   意义   | 长度 | 其他 |
| :--------: | :-----: | :------: | :--: | ---- |
|    tdid    |   int   | 唯一标识 |      |      |
| td_project | varchar |   项目   |      |      |
|  td_name   | varchar | 机型名称 |      |      |
|  td_time   | varchar | 操作时间 |      |      |
|            |         |          |      |      |

​    tab_device   机型表



|   字段    |  类型   |   意义   | 长度 | 其他 |
| :-------: | :-----: | :------: | :--: | ---- |
|   toid    |   int   | 唯一标识 |      |      |
|  to_name  | varchar | 版本名称 |      |      |
| to_uptime | varchar | 发布时间 |      |      |
|  to_time  | varchar | 操作时间 |      |      |
|           |         |          |      |      |

​    tab_ota   OTA版本



