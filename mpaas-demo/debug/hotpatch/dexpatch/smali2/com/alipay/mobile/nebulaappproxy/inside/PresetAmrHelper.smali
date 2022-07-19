.class public Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;
.super Ljava/lang/Object;
.source "PresetAmrHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmrFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "targetVersion"    # Ljava/lang/String;

    move-object/from16 v1, p1

    const-string v0, "_"

    .line 69
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 70
    return-object v3

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    .line 74
    .local v4, "results":[Ljava/lang/String;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 75
    return-object v3

    .line 77
    :cond_1
    array-length v2, v4

    const/4 v5, 0x0

    move-object v7, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v2, :cond_9

    aget-object v10, v4, v6

    .line 78
    .local v7, "filename":Ljava/lang/String;
    move-object v7, v10

    const-string v11, ".amr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 79
    .local v8, "lastDotPos":I
    move v8, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 80
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 84
    .local v9, "pos":I
    move v9, v10

    if-eq v10, v11, :cond_5

    .line 87
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "appId":Ljava/lang/String;
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "version":Ljava/lang/String;
    sget-object v12, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "parse preset package filename = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", appId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", version = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 93
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v12, :cond_3

    .line 96
    move-object/from16 v12, p2

    :try_start_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v13, :cond_2

    move-object/from16 v13, p3

    :try_start_2
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 100
    .end local v4    # "results":[Ljava/lang/String;
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "lastDotPos":I
    .end local v9    # "pos":I
    .end local v10    # "appId":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 96
    .restart local v4    # "results":[Ljava/lang/String;
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "lastDotPos":I
    .restart local v9    # "pos":I
    .restart local v10    # "appId":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :cond_2
    move-object/from16 v13, p3

    goto :goto_1

    .line 100
    .end local v4    # "results":[Ljava/lang/String;
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "lastDotPos":I
    .end local v9    # "pos":I
    .end local v10    # "appId":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 93
    .restart local v4    # "results":[Ljava/lang/String;
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "lastDotPos":I
    .restart local v9    # "pos":I
    .restart local v10    # "appId":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :cond_3
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto :goto_1

    .line 92
    :cond_4
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto :goto_1

    .line 84
    .end local v10    # "appId":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    :cond_5
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto :goto_1

    .line 80
    .end local v9    # "pos":I
    :cond_6
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    goto :goto_1

    .line 79
    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 77
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "lastDotPos":I
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 102
    .end local v4    # "results":[Ljava/lang/String;
    goto :goto_4

    .line 100
    :catch_2
    move-exception v0

    move-object/from16 v12, p2

    :goto_2
    move-object/from16 v13, p3

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-object v3
.end method

.method public static listArmFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "_"

    .line 29
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 30
    return-object v3

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    .line 34
    .local v4, "results":[Ljava/lang/String;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 35
    return-object v3

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v2, "packageInfos":Ljava/util/List;
    array-length v5, v4

    const/4 v6, 0x0

    move-object v8, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v11, v4, v7

    .line 39
    .local v8, "filename":Ljava/lang/String;
    move-object v8, v11

    const-string v12, ".amr"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 40
    .local v9, "lastDotPos":I
    move v9, v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 41
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 44
    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 45
    .local v10, "pos":I
    move v10, v11

    if-eq v11, v12, :cond_2

    .line 48
    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "appId":Ljava/lang/String;
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, "version":Ljava/lang/String;
    sget-object v13, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "parse preset package filename = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", appId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", version = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 54
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 58
    .local v13, "is":Ljava/io/InputStream;
    new-instance v14, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;

    invoke-direct {v14, v11, v12, v13, v6}, Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    .line 59
    .local v14, "packageInfo":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "lastDotPos":I
    .end local v10    # "pos":I
    .end local v11    # "appId":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/String;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "packageInfo":Lcom/alipay/mobile/h5container/api/H5PreSetPkgInfo;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 61
    :cond_3
    return-object v2

    .line 62
    .end local v2    # "packageInfos":Ljava/util/List;
    .end local v4    # "results":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/inside/PresetAmrHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    return-object v3
.end method
