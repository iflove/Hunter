.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "downloadItem"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    .local v0, "typeDir":Ljava/io/File;
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 578
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 580
    .end local v0    # "typeDir":Ljava/io/File;
    .end local v1    # "root":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bizType"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    .param p2, "resId"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "diffSource":Ljava/lang/String;
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$3;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p0, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "bundles":Ljava/util/Map;
    const-string/jumbo v1, "plugins"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 153
    .local v1, "rootDir":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;

    invoke-direct {v4, v1, v2}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v3

    .line 156
    .local v5, "byteDataBundleOperator":Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v0}, Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;->readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v5    # "byteDataBundleOperator":Lcom/alipay/mobile/quinox/bundle/bytedata/ByteDataBundleOperator;
    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    move-object v5, v4

    .line 158
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "DynamicRelease"

    invoke-static {v6, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v4, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;

    invoke-direct {v4, v1, v2}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v4, "protobufBundleOperator":Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v0}, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;->readBundlesFromCfg(Ljava/util/List;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    goto :goto_0

    .line 162
    :catch_1
    move-exception v7

    .line 163
    .local v7, "e2":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v4    # "protobufBundleOperator":Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator;
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v7    # "e2":Ljava/io/IOException;
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 168
    .local v5, "bundle":Lcom/alipay/mobile/quinox/bundle/IBundle;
    move-object v5, v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;JILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Ljava/lang/String;
    .locals 17

    .line 181
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move/from16 v0, p5

    move-object/from16 v12, p6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchResource(downloadItem="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", maxRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "DynamicRelease"

    invoke-interface {v1, v13, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->c:Ljava/lang/String;

    invoke-direct {v7, v8, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_1c

    .line 191
    nop

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v14, "Failed to delete targetFile: "

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const/4 v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_6

    .line 204
    new-instance v4, Ljava/io/File;

    iget-object v5, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v15, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v5, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 206
    new-instance v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$1;

    invoke-direct {v15, v7, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;Ljava/lang/String;)V

    invoke-static {v4, v15}, Lcom/alipay/mobile/quinox/utils/FileUtil;->listFiles(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 213
    if-eqz v4, :cond_5

    array-length v5, v4

    if-lez v5, :cond_5

    .line 214
    array-length v5, v4

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v5, :cond_4

    aget-object v6, v4, v15

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v1

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    nop

    .line 217
    nop

    .line 218
    move-object v15, v6

    const/4 v2, 0x1

    goto :goto_3

    .line 215
    :cond_2
    move-object/from16 v16, v1

    .line 214
    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_4
    move-object/from16 v16, v1

    goto :goto_2

    .line 213
    :cond_5
    move-object/from16 v16, v1

    goto :goto_2

    .line 202
    :cond_6
    move-object/from16 v16, v1

    .line 224
    :goto_2
    move-object/from16 v15, v16

    :goto_3
    if-eqz v2, :cond_7

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reused cached downloaded file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_7
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 231
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 232
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 233
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_9
    :goto_4
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileContent:Ljava/lang/String;

    invoke-static {v1, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 238
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    invoke-static {v1, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 239
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_b

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 243
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save fileContent to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_b
    :goto_5
    const-string v1, "@"

    if-lez v0, :cond_e

    .line 250
    iget-object v2, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    const-string v4, "DynamicReleaseRetry"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 252
    const-string v6, "LastRetryDay"

    move-object/from16 v16, v14

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 253
    if-eq v14, v4, :cond_c

    .line 254
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v6, 0x0

    goto :goto_6

    .line 257
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 258
    if-ge v2, v0, :cond_d

    goto :goto_6

    .line 259
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reach max retryTimes, retryTimes="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v13, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/e;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_e
    move-object/from16 v16, v14

    const/4 v6, 0x0

    .line 268
    :goto_6
    iget-object v0, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 269
    iget-object v0, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    iget-object v2, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    .line 270
    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->valueOf(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    move-result-object v2

    iget-object v3, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resId:Ljava/lang/String;

    .line 269
    invoke-static {v0, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Landroid/content/Context;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : diffSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 273
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/d;

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v12}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/d;-><init>(Ljava/lang/String;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    .line 275
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v5, p2

    const/4 v14, 0x0

    move-object v6, v0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/io/File;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobile/common/transport/TransportCallback;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Success to use diff_file to merge :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 284
    :cond_f
    goto :goto_7

    .line 279
    :catchall_0
    move-exception v0

    .line 281
    instance-of v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    if-eqz v1, :cond_13

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_7

    .line 282
    :cond_10
    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    throw v0

    .line 272
    :cond_11
    const/4 v14, 0x0

    goto :goto_7

    .line 268
    :cond_12
    const/4 v14, 0x0

    .line 289
    :cond_13
    :goto_7
    iget-object v0, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 292
    iget-object v0, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 296
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 299
    iget-object v1, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getSetOnlyWifiRequest()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 301
    iget-object v1, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 303
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setOnlyWifiRequest(Z)V

    .line 306
    :cond_14
    if-eqz v12, :cond_15

    .line 307
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/d;

    iget-object v2, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resId:Ljava/lang/String;

    invoke-direct {v1, v2, v14, v12}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/d;-><init>(Ljava/lang/String;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 308
    invoke-virtual {v9, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a(Lcom/alipay/mobile/common/transport/Request;)V

    .line 311
    :cond_15
    new-instance v1, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v2, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 314
    const-wide/16 v1, 0x0

    cmp-long v3, v10, v1

    if-lez v3, :cond_16

    .line 315
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    mul-long v1, v1, v10

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 318
    :cond_16
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "go to download :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    goto :goto_8

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :cond_17
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    const-string/jumbo v1, "mismatch network type"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_18
    :goto_8
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 330
    iget-object v0, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    invoke-static {v0, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 331
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_19

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_19
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download fail: checkFileInMd5 fail. fileMD5="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1a
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1b
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    const-string/jumbo v1, "target file not exist"

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "targetFile is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "item"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 536
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeDiffLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p0, "base64Code"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/io/File;

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    return-void

    .line 547
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 548
    .local v1, "result":[B
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 549
    move-object v0, v2

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v1    # "result":[B
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    return-void

    .line 557
    :catch_0
    move-exception v1

    .line 560
    return-void

    .line 550
    :catchall_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 554
    .end local v1    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 555
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 559
    :cond_1
    return-void

    .line 553
    :catchall_1
    move-exception v1

    .line 554
    if-eqz v0, :cond_2

    .line 555
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 557
    :catch_1
    move-exception v2

    goto :goto_1

    .line 559
    :cond_2
    :goto_0
    nop

    :goto_1
    throw v1
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/io/File;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobile/common/transport/TransportCallback;)Z
    .locals 17

    .line 341
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v3, p3

    const-string v4, "Start|Fail_Download"

    const-string v10, "Delete diffSourceTempFile: "

    .line 344
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 347
    nop

    .line 350
    nop

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const-string v7, "Failed to delete diffFile: "

    const-string v12, "DynamicRelease"

    if-eqz v6, :cond_1

    .line 352
    :try_start_1
    iget-object v6, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    const/4 v6, 0x1

    goto :goto_1

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    goto/16 :goto_10

    .line 361
    :cond_1
    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_3

    .line 363
    new-instance v8, Ljava/io/File;

    iget-object v13, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    iget-object v14, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 365
    new-instance v14, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;

    invoke-direct {v14, v1, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;Ljava/lang/String;)V

    invoke-static {v8, v14}, Lcom/alipay/mobile/quinox/utils/FileUtil;->listFiles(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    .line 372
    if-eqz v8, :cond_3

    array-length v13, v8

    if-lez v13, :cond_3

    .line 373
    array-length v13, v8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v8, v14

    .line 374
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    iget-object v11, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    invoke-static {v11, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 375
    nop

    .line 376
    nop

    .line 377
    move-object v8, v15

    const/4 v6, 0x1

    goto :goto_3

    .line 373
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 383
    :cond_3
    move-object v8, v0

    :goto_3
    if-eqz v6, :cond_4

    .line 384
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Reused cached downloaded file:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v12, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    const/4 v0, 0x1

    goto :goto_4

    .line 383
    :cond_4
    const/4 v0, 0x0

    .line 389
    :goto_4
    const-string v6, "Start|Fail_IO"

    const-string v11, "Failed to delete old diffFile: "

    if-nez v0, :cond_8

    :try_start_2
    iget-object v13, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffContent:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 390
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 391
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    .line 392
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-static {v2, v6, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    throw v0

    .line 398
    :cond_6
    :goto_5
    iget-object v13, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffContent:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 400
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "save base64 success: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v13, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    invoke-static {v13, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 402
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_8

    .line 403
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 406
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "save diffContent to:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v13, 0x1

    goto :goto_7

    .line 412
    :cond_8
    :goto_6
    move v13, v0

    :goto_7
    const/4 v14, 0x0

    if-nez v13, :cond_10

    iget-object v0, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 415
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getMaxDiffSize()I

    move-result v0

    .line 416
    iget v15, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffFileSize:I

    if-ge v15, v0, :cond_f

    .line 421
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 423
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-static {v2, v6, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    throw v0

    .line 429
    :cond_a
    :goto_8
    new-instance v0, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iget-object v6, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffUrl:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setPath(Ljava/lang/String;)V

    .line 432
    iget-object v6, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getSetOnlyWifiRequest()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 434
    iget-object v6, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->e:Ljava/util/List;

    invoke-static {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 436
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setOnlyWifiRequest(Z)V

    .line 439
    :cond_b
    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 440
    move-object/from16 v6, p4

    invoke-virtual {v6, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a(Lcom/alipay/mobile/common/transport/Request;)V

    .line 441
    new-instance v6, Lcom/alipay/mobile/common/transport/download/DownloadManager;

    iget-object v11, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/alipay/mobile/common/transport/download/DownloadManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/transport/download/DownloadManager;->addDownload(Lcom/alipay/mobile/common/transport/download/DownloadRequest;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " download success."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 449
    iget-object v0, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 450
    const-string v0, "Start|Download|Fail_Verify"

    invoke-static {v2, v0, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 455
    :cond_c
    const/4 v13, 0x1

    goto :goto_9

    .line 458
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v6, "download fail: diffFile doesn\'t exist."

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-static {v2, v4, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :cond_e
    goto :goto_9

    .line 461
    :catchall_1
    move-exception v0

    .line 462
    :try_start_4
    invoke-static {v2, v4, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 417
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "diffFileSize is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffFileSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but max is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    const-string/jumbo v3, "reach diff max size"

    invoke-direct {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 466
    :cond_10
    :goto_9
    if-eqz v13, :cond_19

    .line 467
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_12

    .line 468
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_a

    .line 469
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete targetFile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    :cond_12
    :goto_a
    :try_start_7
    new-instance v0, Lcom/alipay/mpaas/bundle/d/c;

    invoke-direct {v0}, Lcom/alipay/mpaas/bundle/d/c;-><init>()V

    .line 474
    invoke-interface {v0, v8}, Lcom/alipay/mpaas/bundle/d/b;->a(Ljava/io/File;)Z

    move-result v4

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isZipFile("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 477
    const-string v11, "Start|Download|Verify|Success"

    const-string v13, "Start|Download|Verify|Fail_Merge"

    if-eqz v4, :cond_17

    .line 478
    :try_start_8
    new-instance v4, Ljava/io/File;

    iget-object v6, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/io/File;

    iget-object v7, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    const-string/jumbo v15, "plugins_lib"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 480
    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v7, v15, v14}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    aput-object v7, v6, v14

    new-instance v7, Ljava/io/File;

    iget-object v15, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    .line 481
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v5

    .line 484
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    new-instance v15, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    invoke-static {v5, v15}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copySingleFile(Ljava/io/File;Ljava/io/File;)Z

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "copy File "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 490
    :try_start_a
    new-instance v3, Lcom/alipay/mpaas/bundle/b/c;

    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;

    iget-object v7, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/a;

    invoke-direct {v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/a;-><init>()V

    invoke-direct {v3, v0, v5, v7}, Lcom/alipay/mpaas/bundle/b/c;-><init>(Lcom/alipay/mpaas/bundle/d/b;Lcom/alipay/mpaas/bundle/d/a;Lcom/alipay/mpaas/bundle/b/b;)V

    .line 491
    new-instance v0, Lcom/alipay/mpaas/bundle/b/a;

    invoke-direct {v0, v3}, Lcom/alipay/mpaas/bundle/b/a;-><init>(Lcom/alipay/mpaas/bundle/b/c;)V

    .line 492
    move-object v3, v0

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/mpaas/bundle/b/a;->a(Ljava/io/File;[Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 493
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Finish bundlePatch.patch: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bRet="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    if-eqz v3, :cond_13

    .line 496
    const/4 v4, 0x0

    invoke-static {v2, v11, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 498
    :cond_13
    const/4 v4, 0x0

    invoke-static {v2, v13, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 503
    :goto_b
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 505
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFile(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move v11, v3

    goto/16 :goto_12

    .line 504
    :cond_14
    move v11, v3

    goto :goto_d

    .line 526
    :catchall_2
    move-exception v0

    move v11, v3

    goto/16 :goto_11

    .line 500
    :catchall_3
    move-exception v0

    move v11, v3

    goto :goto_c

    :catchall_4
    move-exception v0

    const/4 v11, 0x0

    .line 501
    :goto_c
    :try_start_d
    invoke-static {v2, v13, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 503
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 505
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFile(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 508
    :cond_15
    :goto_d
    goto/16 :goto_12

    .line 503
    :catchall_5
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 505
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFile(Ljava/lang/String;)V

    :cond_16
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 510
    :cond_17
    const/4 v14, 0x0

    :try_start_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileMD5:Ljava/lang/String;

    iget-object v7, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->diffMD5:Ljava/lang/String;

    .line 510
    invoke-static {v0, v3, v4, v6, v7}, Lcom/alipay/mobile/common/patch/BasePatcher;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " merge patch => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 515
    if-eqz v0, :cond_18

    .line 516
    nop

    .line 517
    const/4 v3, 0x0

    :try_start_10
    invoke-static {v2, v11, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/4 v11, 0x1

    goto :goto_12

    .line 521
    :catchall_6
    move-exception v0

    const/4 v11, 0x1

    goto :goto_e

    .line 519
    :cond_18
    const/4 v3, 0x0

    :try_start_11
    invoke-static {v2, v13, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 523
    const/4 v11, 0x0

    goto :goto_12

    .line 521
    :catchall_7
    move-exception v0

    const/4 v11, 0x0

    .line 522
    :goto_e
    :try_start_12
    invoke-static {v2, v13, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_f

    .line 526
    :catchall_8
    move-exception v0

    goto :goto_11

    .line 466
    :cond_19
    const/4 v14, 0x0

    const/4 v11, 0x0

    .line 531
    :goto_f
    goto :goto_12

    .line 526
    :catchall_9
    move-exception v0

    const/4 v14, 0x0

    :goto_10
    const/4 v11, 0x0

    .line 527
    :goto_11
    const-string v3, "Start|Fail"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    instance-of v2, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    if-nez v2, :cond_1a

    .line 532
    :goto_12
    return v11

    .line 529
    :cond_1a
    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    throw v0
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 564
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/security/Md5Verifier;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "targetFileMd5":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 565
    .end local v0    # "targetFileMd5":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;JILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Ljava/util/List;
    .locals 23
    .param p1, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p2, "items"    # Ljava/util/List;
    .param p3, "requestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p4, "delay"    # J
    .param p6, "maxRetry"    # I
    .param p7, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;",
            "JI",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;"
        }
    .end annotation

    .line 101
    move-object/from16 v1, p1

    move-object/from16 v9, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 103
    .local v10, "entities":Ljava/util/List;
    iget-object v11, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    .line 104
    .local v11, "drv":Ljava/lang/String;
    iget-object v12, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 106
    .local v12, "bizType":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 107
    .local v3, "iterator":Ljava/util/Iterator;
    move-object v13, v0

    .end local v3    # "iterator":Ljava/util/Iterator;
    .local v13, "iterator":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v14, v2

    move-object v15, v14

    .line 109
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 110
    .local v8, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;

    invoke-direct {v0, v12, v11, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;-><init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V

    move-object v7, v0

    .line 112
    .local v7, "downloadItem":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v1, v7

    .end local v7    # "downloadItem":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    .local v1, "downloadItem":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    move/from16 v7, p6

    move-object/from16 v16, v15

    move-object v15, v8

    .end local v8    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .local v15, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    move-object/from16 v8, p7

    :try_start_0
    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;JILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 113
    .local v8, "location":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "DynamicRelease"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloaded item location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    iget-object v4, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iget-object v5, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    iget-object v6, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    iget-object v7, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->issueDesc:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move-object v3, v11

    move-object/from16 v16, v8

    .end local v8    # "location":Ljava/lang/String;
    .local v16, "location":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {v2 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v0, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    move-object/from16 v3, p0

    move-object/from16 v15, v16

    .end local v0    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .end local v16    # "location":Ljava/lang/String;
    goto/16 :goto_3

    .line 117
    :catchall_0
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v2, v16

    .line 119
    .local v2, "e":Ljava/lang/Throwable;
    move-object v2, v0

    instance-of v0, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/a;

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "Start|Fail_Download"

    .local v0, "fail":Ljava/lang/String;
    goto :goto_2

    .line 121
    .end local v0    # "fail":Ljava/lang/String;
    :cond_0
    instance-of v0, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/e;

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "Start|Download|Fail_Verify"

    .restart local v0    # "fail":Ljava/lang/String;
    goto :goto_2

    .line 124
    .end local v0    # "fail":Ljava/lang/String;
    :cond_1
    const-string v0, "Start|Fail_IO"

    .line 126
    .restart local v0    # "fail":Ljava/lang/String;
    :goto_2
    invoke-virtual {v12}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iget-object v4, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    iget-object v5, v15, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v15}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->getLogParams()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v22}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 129
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a:Landroid/content/Context;

    const-string v5, "DynamicReleaseRetry"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v5, v14

    .line 130
    .local v5, "sp":Landroid/content/SharedPreferences;
    move-object v5, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 131
    .local v4, "retryTimes":I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;->fileUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v15, v2

    move-object v14, v5

    .line 133
    .end local v0    # "fail":Ljava/lang/String;
    .end local v1    # "downloadItem":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/b;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "retryTimes":I
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 107
    :cond_3
    move-object/from16 v3, p0

    .line 136
    :goto_4
    return-object v10
.end method
