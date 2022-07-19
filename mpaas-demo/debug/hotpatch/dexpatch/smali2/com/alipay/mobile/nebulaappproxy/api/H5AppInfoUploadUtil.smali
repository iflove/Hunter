.class public Lcom/alipay/mobile/nebulaappproxy/api/H5AppInfoUploadUtil;
.super Ljava/lang/Object;
.source "H5AppInfoUploadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)Z
    .locals 9
    .param p0, "rate"    # J

    const-string v0, "H5AppInfoUploadUtil"

    .line 114
    const-string v1, "h5_upload_all_app_info"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v2, "lastUploadStr":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 116
    const-wide/16 v5, 0x0

    .line 118
    .local v5, "lastTime":J
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v5, v7

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 123
    .local v7, "currentTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "currentTime : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastTime : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " rate :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-wide/16 v0, 0x0

    cmp-long v3, v5, v0

    if-lez v3, :cond_0

    sub-long v0, v7, v5

    cmp-long v3, v0, p0

    if-lez v3, :cond_0

    .line 125
    return v4

    .line 127
    .end local v5    # "lastTime":J
    .end local v7    # "currentTime":J
    :cond_0
    nop

    .line 133
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_1
    nop

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v4
.end method

.method public static uploadAllAppInfo()V
    .locals 31

    .line 34
    const-string v1, "H5AppInfoUploadUtil"

    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 35
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;

    .line 36
    .local v3, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    const-class v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 37
    .local v4, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 38
    .local v5, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    .line 40
    const-string v0, "h5_webstatZhuangJi"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 41
    .local v7, "uploadConfig":Ljava/lang/String;
    move-object v7, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5LoginProvider;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    return-void

    .line 47
    :cond_1
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    move-object v8, v6

    .line 48
    .local v8, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v8, v0

    if-nez v0, :cond_2

    .line 49
    return-void

    .line 51
    :cond_2
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v9, v6

    .line 52
    .local v9, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "switch"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "YES"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x18

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 55
    .local v10, "uploadRate":J
    :try_start_0
    const-string/jumbo v0, "rate"

    invoke-static {v9, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x0

    .line 56
    .local v12, "rate":I
    move v12, v0

    if-lez v0, :cond_3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v12

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v10, v13

    .line 61
    .end local v12    # "rate":I
    :cond_3
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v10, v11}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppInfoUploadUtil;->a(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    const-string v0, ""

    .line 64
    .local v0, "appInfoStr":Ljava/lang/String;
    const-string v12, ""

    .line 65
    .local v12, "param4Str":Ljava/lang/String;
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestAppInfo()Ljava/util/Map;

    move-result-object v13

    .line 66
    .local v13, "map":Ljava/util/Map;
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->queryAllH5AppVersionFromAppCenter()Ljava/util/Map;

    move-result-object v14

    .line 67
    .local v14, "appCenterMap":Ljava/util/Map;
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 69
    .local v15, "time":J
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v6

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 70
    .local v18, "appEntry":Ljava/util/Map$Entry;
    move-object/from16 v18, v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, "appId":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 72
    .local v19, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object/from16 v22, v21

    .end local v19    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v22, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v21, :cond_a

    .line 73
    move-object/from16 v19, v2

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v19, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v2

    .line 74
    .local v20, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v3, v22

    .end local v22    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v3, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v21, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 75
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v2

    const-string v22, "Y"

    move-object/from16 v23, v4

    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .local v23, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    const-string v4, "N"

    if-eqz v2, :cond_4

    move-object/from16 v2, v22

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 76
    .local v2, "isDownload":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move-object/from16 v25, v4

    const-string v4, ";"

    move-object/from16 v26, v5

    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v26, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    const-string v5, "_"

    if-eqz v24, :cond_5

    .line 77
    move-object/from16 v24, v7

    .end local v7    # "uploadConfig":Ljava/lang/String;
    .local v24, "uploadConfig":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v8

    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .local v27, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    iget-object v8, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->unAvailableReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .end local v12    # "param4Str":Ljava/lang/String;
    .local v7, "param4Str":Ljava/lang/String;
    goto :goto_3

    .line 76
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .local v7, "uploadConfig":Ljava/lang/String;
    .restart local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v12    # "param4Str":Ljava/lang/String;
    :cond_5
    move-object/from16 v24, v7

    move-object/from16 v27, v8

    .line 79
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    :goto_3
    invoke-interface/range {v20 .. v20}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v7, v22

    goto :goto_4

    :cond_6
    move-object/from16 v7, v25

    .line 80
    .local v7, "isInstall":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "credit":Ljava/lang/String;
    move-object/from16 v28, v9

    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .local v28, "configObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v9, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->patch:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v22, v25

    :cond_7
    move-object/from16 v9, v22

    .line 82
    .local v9, "isPatch":Ljava/lang/String;
    const-string v22, "0"

    .line 83
    .local v22, "appCenterVersion":Ljava/lang/String;
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_8

    .line 84
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 85
    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v22, v25

    check-cast v22, Ljava/lang/String;

    move-wide/from16 v29, v10

    move-object/from16 v10, v22

    goto :goto_5

    .line 87
    :cond_8
    move-wide/from16 v29, v10

    move-object/from16 v10, v22

    .end local v22    # "appCenterVersion":Ljava/lang/String;
    .local v10, "appCenterVersion":Ljava/lang/String;
    .local v29, "uploadRate":J
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v19

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    move-object/from16 v5, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-wide/from16 v10, v29

    const/4 v6, 0x0

    move-object/from16 v19, v3

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 91
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 72
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v20    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "uploadRate":J
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v7, "uploadConfig":Ljava/lang/String;
    .local v8, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .local v9, "configObj":Lcom/alibaba/fastjson/JSONObject;
    .local v10, "uploadRate":J
    .local v22, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-wide/from16 v29, v10

    move-object/from16 v3, v22

    .line 96
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v6    # "appId":Ljava/lang/String;
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "uploadRate":J
    .end local v18    # "appEntry":Ljava/util/Map$Entry;
    .end local v22    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v29    # "uploadRate":J
    :goto_6
    move-object/from16 v2, v19

    move-object/from16 v4, v23

    move-object/from16 v7, v24

    move-object/from16 v5, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move-wide/from16 v10, v29

    const/4 v6, 0x0

    move-object/from16 v19, v3

    move-object/from16 v3, v21

    goto/16 :goto_1

    .line 97
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "uploadRate":J
    .restart local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v7    # "uploadConfig":Ljava/lang/String;
    .restart local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "uploadRate":J
    :cond_b
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-wide/from16 v29, v10

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "uploadRate":J
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v29    # "uploadRate":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadAllAppInfo getAllHighestAppInfo cost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " map.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 67
    .end local v15    # "time":J
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "uploadRate":J
    .restart local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v7    # "uploadConfig":Ljava/lang/String;
    .restart local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "uploadRate":J
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-wide/from16 v29, v10

    .line 99
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "uploadRate":J
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v29    # "uploadRate":J
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "step=upload^info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "param3":Ljava/lang/String;
    const-string v2, "H5_APP_WSZHUANGJI"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v12, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 102
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->newH5BehaviorLogConfig()Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v3

    const-string v4, "WEBSTAT"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    move-result-object v3

    .line 103
    .local v3, "config":Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V

    .line 106
    nop

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v5, "h5_upload_all_app_info"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 62
    .end local v0    # "appInfoStr":Ljava/lang/String;
    .end local v1    # "param3":Ljava/lang/String;
    .end local v12    # "param4Str":Ljava/lang/String;
    .end local v13    # "map":Ljava/util/Map;
    .end local v14    # "appCenterMap":Ljava/util/Map;
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "uploadRate":J
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v3, "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v7    # "uploadConfig":Ljava/lang/String;
    .restart local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "uploadRate":J
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-wide/from16 v29, v10

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "uploadRate":J
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v29    # "uploadRate":J
    goto :goto_8

    .line 52
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v29    # "uploadRate":J
    .restart local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v7    # "uploadConfig":Ljava/lang/String;
    .restart local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v7    # "uploadConfig":Ljava/lang/String;
    .end local v8    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v9    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v24    # "uploadConfig":Ljava/lang/String;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .restart local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_8

    .line 38
    .end local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v24    # "uploadConfig":Ljava/lang/String;
    .end local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v27    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v28    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    .line 111
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .end local v4    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .end local v5    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v19    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .restart local v21    # "h5LoginProvider":Lcom/alipay/mobile/nebula/provider/H5LoginProvider;
    .restart local v23    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    .restart local v26    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :goto_8
    return-void
.end method
