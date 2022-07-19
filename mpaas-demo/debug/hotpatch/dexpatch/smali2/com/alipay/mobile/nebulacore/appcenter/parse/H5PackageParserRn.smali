.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;
.super Ljava/lang/Object;
.source "H5PackageParserRn.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PackageParserRn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseRNPackage(Ljava/lang/String;)I
    .locals 27
    .param p0, "appId"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-class v2, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;

    monitor-enter v2

    .line 28
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 31
    .local v3, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v5, 0x0

    move-object v6, v5

    .line 32
    .local v6, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v6, v0

    const/4 v7, 0x1

    if-nez v0, :cond_0

    .line 33
    const-string v0, "H5PackageParserRn"

    const-string/jumbo v5, "nebulaAppProvider==null"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v2

    return v7

    .line 36
    :cond_0
    :try_start_1
    invoke-interface {v6, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 38
    .local v8, "version":Ljava/lang/String;
    invoke-interface {v6, v1, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v5

    .line 39
    .local v9, "installPath":Ljava/lang/String;
    move-object v9, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 40
    monitor-exit v2

    return v7

    .line 42
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "file://"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v5

    .line 43
    .local v10, "offlineHost":Ljava/lang/String;
    move-object v10, v0

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 47
    :cond_2
    const-string v0, "H5PackageParserRn"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "offlineHost "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v11, v5

    .line 50
    .local v11, "offlineUri":Landroid/net/Uri;
    move-object v11, v0

    if-eqz v0, :cond_15

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v17, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    goto/16 :goto_a

    .line 54
    :cond_3
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v12, v5

    .line 55
    .local v12, "offlinePath":Ljava/lang/String;
    move-object v12, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v13, 0x2

    if-nez v0, :cond_4

    .line 56
    const-string v0, "H5PackageParserRn"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "offlinePath "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not exists!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit v2

    return v13

    .line 61
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/CERT.json"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 63
    .local v14, "certPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/SIGN.json"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 64
    .local v15, "signPath":Ljava/lang/String;
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 65
    const-string v0, "H5PackageParserRn"

    const-string v7, "cert not exists!"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v1, v10, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    const/4 v0, 0x4

    monitor-exit v2

    return v0

    .line 70
    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object/from16 v16, v5

    .line 72
    .local v16, "childrenFiles":[Ljava/io/File;
    move-object/from16 v17, v0

    .end local v16    # "childrenFiles":[Ljava/io/File;
    .local v17, "childrenFiles":[Ljava/io/File;
    if-eqz v0, :cond_14

    move-object/from16 v13, v17

    .end local v17    # "childrenFiles":[Ljava/io/File;
    .local v13, "childrenFiles":[Ljava/io/File;
    array-length v0, v13

    if-nez v0, :cond_6

    move-object/from16 v17, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    goto/16 :goto_9

    .line 77
    :cond_6
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/16 v16, 0x0

    move/from16 v17, v16

    .line 78
    .local v17, "useNewSignKey":Z
    move/from16 v17, v0

    move/from16 v18, v16

    .line 79
    .local v18, "signPathExist":Z
    move/from16 v19, v0

    .end local v18    # "signPathExist":Z
    .local v19, "signPathExist":Z
    if-eqz v0, :cond_8

    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v5, v17

    goto :goto_1

    .line 80
    :cond_8
    :goto_0
    const-string v0, "H5PackageParserRn"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "signPath is exist : "

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v5, v19

    .end local v19    # "signPathExist":Z
    .local v5, "signPathExist":Z
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move/from16 v19, v5

    .end local v5    # "signPathExist":Z
    .restart local v19    # "signPathExist":Z
    const-string v5, ", H5PackageParser.TAR_PUBLIC_KEY : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v17, 0x0

    move/from16 v5, v17

    .line 84
    .end local v17    # "useNewSignKey":Z
    .local v5, "useNewSignKey":Z
    :goto_1
    const-string v0, "H5PackageParserRn"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    .end local v6    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v17, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    const-string/jumbo v6, "useNewSignKey : "

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v5, :cond_9

    .line 89
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 90
    .local v7, "signText":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 91
    .end local v7    # "signText":Ljava/lang/String;
    .local v0, "joCert":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v0

    goto :goto_2

    .line 92
    .end local v0    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 93
    .local v7, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v6, v0

    .line 95
    .end local v7    # "text":Ljava/lang/String;
    .local v6, "joCert":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_a

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    goto/16 :goto_8

    .line 101
    :cond_a
    :try_start_5
    array-length v0, v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v20, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x0

    .end local v8    # "version":Ljava/lang/String;
    .local v20, "version":Ljava/lang/String;
    :goto_3
    if-ge v8, v0, :cond_12

    :try_start_6
    aget-object v22, v13, v8

    .line 102
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    .line 103
    .local v7, "signKey":Ljava/lang/String;
    move-object/from16 v7, v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    move/from16 v22, v0

    const-string v0, "CERT.json"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "SIGN.json"

    .line 104
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ios"

    .line 105
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 106
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    .local v0, "signValue":Ljava/lang/String;
    .local v21, "result":Z
    if-eqz v5, :cond_b

    .line 110
    move/from16 v23, v5

    .end local v5    # "useNewSignKey":Z
    .local v23, "useNewSignKey":Z
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v24, v6

    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .local v24, "joCert":Lcom/alibaba/fastjson/JSONObject;
    :try_start_8
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    move-object/from16 v25, v9

    const/4 v6, 0x1

    .end local v9    # "installPath":Ljava/lang/String;
    .local v25, "installPath":Ljava/lang/String;
    :try_start_9
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getPublicKey(Z)Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-static {v5, v9, v0}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v21    # "result":Z
    .local v5, "result":Z
    goto :goto_4

    .line 132
    .end local v0    # "signValue":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "signKey":Ljava/lang/String;
    .end local v25    # "installPath":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .end local v9    # "installPath":Ljava/lang/String;
    .restart local v25    # "installPath":Ljava/lang/String;
    goto/16 :goto_6

    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "installPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    goto/16 :goto_6

    .line 113
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .restart local v0    # "signValue":Ljava/lang/String;
    .local v5, "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "signKey":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v21    # "result":Z
    :cond_b
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    :try_start_a
    sget-object v5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v5, :cond_c

    .line 115
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v21    # "result":Z
    .local v5, "result":Z
    goto :goto_4

    .line 132
    .end local v0    # "signValue":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "signKey":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v26, v11

    goto/16 :goto_6

    .line 119
    .restart local v0    # "signValue":Ljava/lang/String;
    .restart local v7    # "signKey":Ljava/lang/String;
    .restart local v21    # "result":Z
    :cond_c
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getPublicKey(Z)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 123
    .end local v21    # "result":Z
    .restart local v5    # "result":Z
    :goto_4
    const-string v6, "H5PackageParserRn"

    new-instance v9, Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v26, v11

    .end local v11    # "offlineUri":Landroid/net/Uri;
    .local v26, "offlineUri":Landroid/net/Uri;
    :try_start_d
    const-string/jumbo v11, "signKey "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " signValue "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " result:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez v5, :cond_d

    .line 127
    const/4 v6, 0x0

    invoke-static {v1, v10, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 128
    const/4 v6, 0x6

    monitor-exit v2

    return v6

    .line 126
    :cond_d
    const/4 v6, 0x0

    move/from16 v21, v5

    goto :goto_5

    .line 132
    .end local v0    # "signValue":Ljava/lang/String;
    .end local v5    # "result":Z
    .end local v7    # "signKey":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_6

    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :catch_4
    move-exception v0

    move-object/from16 v26, v11

    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    goto :goto_6

    .line 105
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .local v5, "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "signKey":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_e
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    const/4 v6, 0x0

    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    goto :goto_5

    .line 104
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v5    # "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_f
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    const/4 v6, 0x0

    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    goto :goto_5

    .line 103
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v5    # "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_10
    move/from16 v22, v0

    :cond_11
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    const/4 v6, 0x0

    .line 101
    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "signKey":Ljava/lang/String;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v11, v26

    goto/16 :goto_3

    .line 132
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v5    # "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :catch_5
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    goto :goto_6

    .line 134
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v5    # "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_12
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    goto :goto_7

    .line 132
    .end local v20    # "version":Ljava/lang/String;
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v5    # "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :catch_6
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .line 133
    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    :goto_6
    :try_start_e
    const-string v5, "H5PackageParserRn"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 137
    .local v5, "elapse":J
    const-string v0, "H5PackageParserRn"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parse package elapse "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " appId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 139
    monitor-exit v2

    return v16

    .line 95
    .end local v20    # "version":Ljava/lang/String;
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .local v5, "useNewSignKey":Z
    .restart local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_13
    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .line 96
    .end local v5    # "useNewSignKey":Z
    .end local v6    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v23    # "useNewSignKey":Z
    .restart local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    :goto_8
    :try_start_f
    const-string v0, "H5PackageParserRn"

    const-string v5, "joCert is empty"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 97
    const/4 v0, 0x5

    monitor-exit v2

    return v0

    .line 72
    .end local v13    # "childrenFiles":[Ljava/io/File;
    .end local v19    # "signPathExist":Z
    .end local v20    # "version":Ljava/lang/String;
    .end local v23    # "useNewSignKey":Z
    .end local v24    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .local v6, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    .local v17, "childrenFiles":[Ljava/io/File;
    :cond_14
    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 v13, v17

    move-object/from16 v17, v6

    .line 73
    .end local v6    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v13    # "childrenFiles":[Ljava/io/File;
    .local v17, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    :goto_9
    :try_start_10
    const-string v0, "H5PackageParserRn"

    const-string v5, "childrenFiles length == 0"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 74
    monitor-exit v2

    const/4 v0, 0x2

    return v0

    .line 50
    .end local v12    # "offlinePath":Ljava/lang/String;
    .end local v13    # "childrenFiles":[Ljava/io/File;
    .end local v14    # "certPath":Ljava/lang/String;
    .end local v15    # "signPath":Ljava/lang/String;
    .end local v17    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v20    # "version":Ljava/lang/String;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .restart local v6    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "installPath":Ljava/lang/String;
    .restart local v11    # "offlineUri":Landroid/net/Uri;
    :cond_15
    move-object/from16 v17, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    .line 51
    .end local v6    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "installPath":Ljava/lang/String;
    .end local v11    # "offlineUri":Landroid/net/Uri;
    .restart local v17    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v25    # "installPath":Ljava/lang/String;
    .restart local v26    # "offlineUri":Landroid/net/Uri;
    :goto_a
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    .line 27
    .end local v3    # "time":J
    .end local v10    # "offlineHost":Ljava/lang/String;
    .end local v17    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v20    # "version":Ljava/lang/String;
    .end local v25    # "installPath":Ljava/lang/String;
    .end local v26    # "offlineUri":Landroid/net/Uri;
    .end local p0    # "appId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
