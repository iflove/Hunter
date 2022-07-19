.class public final Lcom/alipay/mobile/quinox/bundle/c;
.super Ljava/lang/Object;
.source "BundleOperator.java"


# static fields
.field private static d:Z


# instance fields
.field final a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

.field final b:Lcom/alipay/mobile/quinox/LauncherApplication;

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/bundle/c;->d:Z

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;)V
    .locals 1
    .param p1, "bundleType"    # Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .param p2, "rootDir"    # Ljava/io/File;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;Ljava/lang/String;)V
    .locals 17
    .param p1, "bundleType"    # Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    .param p2, "rootDir"    # Ljava/io/File;
    .param p3, "versionName"    # Ljava/lang/String;

    .line 51
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/quinox/bundle/c;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 53
    if-eqz p3, :cond_0

    move-object/from16 v4, p3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v1, Lcom/alipay/mobile/quinox/bundle/c;->c:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 56
    .local v5, "cfgSp":Landroid/content/SharedPreferences;
    move-object/from16 v6, p1

    .line 58
    .local v6, "curBundleType":Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;
    sget-object v7, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->Unknown:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    const/4 v8, 0x1

    if-ne v2, v7, :cond_2

    .line 59
    const-string v7, "quinox_use_bytedata"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x0

    .line 60
    .local v9, "useByteData":Z
    if-eqz v7, :cond_1

    sget-object v7, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ProtoBuf:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    :goto_1
    move-object v6, v7

    .line 63
    .end local v9    # "useByteData":Z
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "curBundleType="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "BundleOperator"

    invoke-static {v9, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v7, Lcom/alipay/mobile/quinox/bundle/c$2;->a:[I

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ordinal()I

    move-result v10

    aget v7, v7, v10

    if-eq v7, v8, :cond_3

    .line 71
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    invoke-direct {v7, v3, v4}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    goto :goto_2

    .line 67
    :cond_3
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    invoke-direct {v7, v3, v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    .line 68
    nop

    .line 76
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getProcessInfo()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/quinox/utils/ProcessInfo;

    .line 77
    .local v7, "processInfo":Lcom/alipay/mobile/quinox/utils/ProcessInfo;
    sget-object v8, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->Unknown:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    if-ne v2, v8, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/alipay/mobile/quinox/utils/ProcessInfo;->isMainProcess()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 78
    const-string v8, "quinox_bundle_type_cfg_2"

    const/4 v10, 0x0

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v10

    .line 79
    .local v12, "lastBundleType":Ljava/lang/String;
    move-object v12, v11

    if-nez v11, :cond_4

    .line 80
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 81
    :cond_4
    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 82
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "bundle type changed, "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " VS "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v8, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundles(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    move-object v8, v10

    .line 87
    .local v8, "updateBundles":Ljava/util/Map;
    move-object v8, v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 88
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->ByteData:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_3
    move-object v4, v0

    .line 92
    .local v4, "lastOperator":Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 94
    .local v11, "lastBundles":Ljava/util/Map;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0, v11}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_4

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 100
    .local v13, "curSlinks":Ljava/util/List;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v14, v0

    .line 102
    .local v14, "curBundles":Ljava/util/Map;
    :try_start_1
    invoke-virtual {v1, v13, v14}, Lcom/alipay/mobile/quinox/bundle/c;->b(Ljava/util/List;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    goto :goto_5

    .line 103
    :catchall_1
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 104
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 108
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 109
    .local v15, "bundleName":Ljava/lang/String;
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 110
    .local v10, "updateBundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    move-object/from16 v10, v16

    if-eqz v16, :cond_7

    .line 111
    invoke-interface {v10}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 112
    move-object/from16 v16, v0

    invoke-interface {v10}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-direct {v0, v10}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "put update bundle:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {v10}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 111
    :cond_6
    move-object/from16 v16, v0

    goto :goto_7

    .line 110
    :cond_7
    move-object/from16 v16, v0

    .line 117
    .end local v10    # "updateBundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    .end local v15    # "bundleName":Ljava/lang/String;
    :cond_8
    :goto_7
    move-object/from16 v2, p1

    move-object/from16 v0, v16

    goto :goto_6

    .line 120
    :cond_9
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v13, v0}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    return-void

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v9, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "lastOperator":Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
    .end local v8    # "updateBundles":Ljava/util/Map;
    .end local v11    # "lastBundles":Ljava/util/Map;
    .end local v12    # "lastBundleType":Ljava/lang/String;
    .end local v13    # "curSlinks":Ljava/util/List;
    .end local v14    # "curBundles":Ljava/util/Map;
    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDir"    # Ljava/io/File;

    .line 45
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->Unknown:Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/quinox/bundle/c;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;Ljava/io/File;)V

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
    .locals 9
    .param p0, "location"    # Ljava/lang/String;

    .line 300
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 303
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    nop

    .line 307
    :try_start_1
    const-string v1, "META-INF/BUNDLE.MF"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    nop

    .line 312
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 319
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;-><init>()V

    .line 320
    .local v3, "target":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-direct {v4, v3}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    const/4 v5, 0x0

    .line 321
    .local v5, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    move-object v5, v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/quinox/bundle/Bundle;->initFromInputStream(Ljava/io/InputStream;)V

    .line 322
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 324
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v4, "f":Ljava/io/File;
    invoke-static {v4}, Lcom/alipay/mobile/quinox/security/Adler32Verifier;->genFileAdler32Sum(Ljava/io/File;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(J)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 326
    invoke-static {v4}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 327
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    .line 330
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    goto :goto_0

    .line 331
    :catchall_0
    move-exception v6

    .line 332
    .local v6, "e":Ljava/lang/Throwable;
    const-string v7, "BundleOperator"

    const-string v8, "close ZipFile: Exception occur."

    invoke-static {v7, v8, v6}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .end local v6    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v5

    .line 313
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "target":Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 314
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t find META-INF/BUNDLE.MF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can\'t find META-INF/BUNDLE.MF. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 301
    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read ZipFile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/alipay/mobile/quinox/bundle/c;->d:Z

    return v0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z
    .locals 10
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/Map;
    .param p3, "bundleOperator"    # Lcom/alipay/mobile/quinox/bundle/IBundleOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/IBundle;",
            ">;",
            "Lcom/alipay/mobile/quinox/bundle/IBundleOperator;",
            ")Z"
        }
    .end annotation

    .line 158
    invoke-interface {p3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->getBundleType()Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator$BundleType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "assetName":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    invoke-direct {v7}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/c;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    new-instance v9, Lcom/alipay/mobile/quinox/bundle/c$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/bundle/c$1;-><init>(Lcom/alipay/mobile/quinox/bundle/c;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v0, v1, v9}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;ZLcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    move-result v2

    .line 187
    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic b()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/bundle/c;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "location":Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v1, "bundles":Ljava/util/Map;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/quinox/bundle/c;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 284
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 286
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBundleLocationFromCfg, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BundleOperator"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-eqz v2, :cond_1

    .line 289
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 294
    .end local v1    # "bundles":Ljava/util/Map;
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    .local v0, "_bundles":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 261
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/bundle/Bundle;

    .line 262
    .local v2, "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    iget-object v3, v2, Lcom/alipay/mobile/quinox/bundle/Bundle;->mTarget:Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "bundle":Lcom/alipay/mobile/quinox/bundle/Bundle;
    goto :goto_0

    .line 266
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 268
    .local v1, "start":J
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/c;->b:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 269
    const/4 v4, 0x0

    const-string v5, "quinox_force_write_cfg_when_mismatch"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 270
    .local v3, "forceWriteCfg":Z
    iget-object v4, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    invoke-interface {v4, p1, v0, v3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->writeBundlesToCfg(Ljava/util/List;Ljava/util/List;Z)V

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeBundlesToCfg2, cost:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", slinks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bundles:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    const-string v5, "BundleOperator"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "_bundles":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z

    move-result v1

    const/4 v2, 0x0

    .line 140
    .local v2, "bRet":Z
    move v2, v1

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    instance-of v3, v1, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 142
    new-instance v1, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/c;->c:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z

    move-result v2

    goto :goto_0

    .line 143
    :cond_1
    instance-of v1, v1, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    if-eqz v1, :cond_2

    .line 144
    new-instance v1, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    invoke-direct {v1, v4}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z

    move-result v2

    .line 148
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 149
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 150
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 154
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "readAssetsBundlesCfg() : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", slinks.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bundles.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleOperator"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p1, "slinks"    # Ljava/util/List;
    .param p2, "bundles"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "_bundles":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 238
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/quinox/bundle/Bundle;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/quinox/bundle/IBundle;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/quinox/bundle/Bundle;-><init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method
