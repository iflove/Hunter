.class public Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;
.super Ljava/lang/Object;
.source "SnapshotProvider.java"


# direct methods
.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p0, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "appId"    # Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "snapshot"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "snapshot":Ljava/lang/String;
    const-string/jumbo v1, "pagePath"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "pagePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->d(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "SnapshotProvider"

    if-nez v2, :cond_0

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string/jumbo v2, "snapshot switch is disabled"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string/jumbo v2, "saveSnapshot pagePath is null"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    const-string/jumbo v2, "saveSnapshot invalid snapshot string"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_2
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;

    invoke-direct {v2, p1, v1, v0}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IO"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static a(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 3
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 262
    if-nez p0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SnapshotProvider"

    if-nez v0, :cond_1

    .line 267
    const-string v0, "handleSnapshotEvent...embedded H5 page"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    const-string v0, "handleSnapshotEvent isSnapshotEventEnabled switch is disabled"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 338
    return v1

    .line 341
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 342
    .local v3, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 343
    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getSnapshot2WhiteList()Ljava/util/Set;

    move-result-object v0

    .line 344
    .local v2, "whiteList2":Ljava/util/Set;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "all"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageLevel snapshot hit whitelist, appId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapshotProvider"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    return v0

    .line 351
    .end local v2    # "whiteList2":Ljava/util/Set;
    :cond_2
    return v1
.end method

.method private static a(Ljava/io/File;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "SnapshotProvider"

    if-eqz v0, :cond_1

    .line 244
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 245
    .local v0, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 246
    .local v2, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 249
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 252
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "len":I
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readFile\uff0cerror:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 256
    :cond_1
    const-string/jumbo v0, "readFile failed"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "homepageUrl"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "data":[B
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "pagePath":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "snapshotFilePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->d(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "SnapshotProvider"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    const-string/jumbo v3, "snapshot switch is disabled"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-object v5

    .line 104
    :cond_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    const-string/jumbo v3, "snapshot PageLevel disabled and non first page"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object v5

    .line 109
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string/jumbo v3, "snapshotFilePath is null"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v5

    .line 114
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v5

    .line 115
    .local v6, "file":Ljava/io/File;
    move-object v6, v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "snapshot file existed: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Ljava/io/File;)[B

    move-result-object v3

    move-object v7, v5

    .line 118
    .local v7, "snapshotData":[B
    move-object v7, v3

    if-eqz v3, :cond_3

    .line 119
    move-object v0, v7

    .line 122
    const-string v3, "TINY_APP_SNAPSHOT_USE_SUCCESS"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    move-object v8, v5

    .line 123
    .local v8, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v8, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3, p0, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v9, "useSnapshot"

    const-string v10, " true"

    invoke-virtual {v3, v9, v10}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v9, "pageUrl"

    invoke-virtual {v3, v9, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 124
    invoke-static {v8}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "snapshot file read success! "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v7    # "snapshotData":[B
    .end local v8    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_3
    goto :goto_0

    .line 128
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "snapshot file not existed: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v6    # "file":Ljava/io/File;
    nop

    .line 135
    :goto_0
    return-object v0

    .line 130
    :catchall_0
    move-exception v3

    .line 131
    .local v3, "throwable":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " loadSnapshotFile error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v5
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pageUrl"    # Ljava/lang/String;

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "pagePath":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    return-object v0

    .line 149
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 150
    .local v2, "fragment":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    .line 151
    .local v4, "queryParamIndex":I
    move v4, v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 152
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 154
    :cond_1
    move-object v0, v2

    .line 159
    .end local v2    # "fragment":Ljava/lang/String;
    .end local v4    # "queryParamIndex":I
    nop

    .line 160
    :goto_0
    return-object v0

    .line 156
    :catchall_0
    move-exception v1

    .line 157
    .local v1, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPagePathFromPageUrl error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SnapshotProvider"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, ""

    return-object v2
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "homePagePath"    # Ljava/lang/String;

    .line 367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    return v1

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "index.html#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 375
    const/4 v0, 0x1

    return v0

    .line 380
    :cond_2
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHomePage.. e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SnapshotProvider"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 368
    :cond_3
    :goto_1
    return v1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pagePath"    # Ljava/lang/String;

    .line 171
    const-string v0, ""

    .line 172
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "userId":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/nebulaInstallApps/"

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/snapshot/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "fileDir":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    nop

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_index.snapshot.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    return-object v3

    .line 184
    :catchall_0
    move-exception v3

    .line 185
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "SnapshotProvider"

    const-string v5, "getSnapshotFilePath, new directory error: "

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-object v0

    .line 174
    .end local v2    # "fileDir":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3
    .param p0, "snapshot"    # Ljava/lang/String;

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SnapshotProvider"

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "isValidSnapshot...invalid snapshot, string is null"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return v1

    .line 206
    :cond_0
    const-string v0, "<div id=\"__react-content\">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const-string v0, "isValidSnapshot...invalid snapshot, string has no root node"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v1

    .line 211
    :cond_1
    const-string v0, "<div class=\"a-cp-loading-indicator\" aria-hidden=\"true\">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    const-string v0, "<div class=\"a-cp-loading-item\"></div>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "isValidSnapshot...invalid snapshot, snapshot is loading view"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return v1

    .line 217
    :cond_2
    const-string v0, "<div id=\"__react-content\"><div class=\"a-page tiny-page\"></div></div>\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "isValidSnapshot...invalid snapshot, dom tree no ready"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return v1

    .line 222
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "snapshot"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/4 v2, 0x0

    .line 234
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 235
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveSnapshot success, file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SnapshotProvider"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 227
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    return v1

    .line 308
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->getMixActionService()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 309
    .local v3, "mixActionService":Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    move-object v3, v0

    if-eqz v0, :cond_4

    .line 310
    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getSnapshotWhiteList()Ljava/util/Set;

    move-result-object v0

    .line 311
    .local v0, "whiteList":Ljava/util/Set;
    invoke-interface {v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getSnapshotBlackList()Ljava/util/Set;

    move-result-object v4

    .line 314
    .local v2, "blackList":Ljava/util/Set;
    move-object v2, v4

    const-string v5, "SnapshotProvider"

    const-string v6, "all"

    if-eqz v4, :cond_2

    .line 315
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isSnapshotEnabled hit blacklist, appId: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v1

    .line 322
    :cond_2
    if-eqz v0, :cond_4

    .line 323
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "isSnapshotEnabled hit whitelist, appId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x1

    return v1

    .line 329
    .end local v0    # "whiteList":Ljava/util/Set;
    .end local v2    # "blackList":Ljava/util/Set;
    :cond_4
    return v1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pagePath"    # Ljava/lang/String;

    .line 362
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pagePath"    # Ljava/lang/String;

    .line 385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParamTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 389
    .local v3, "startParamInfoList":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    const/4 v0, 0x0

    move-object v4, v2

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 391
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;

    .line 392
    .local v4, "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    move-object v4, v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    iget-object v5, v4, Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;->param:Lcom/alibaba/fastjson/JSONObject;

    .line 394
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v5

    if-eqz v5, :cond_2

    .line 395
    const-string/jumbo v1, "useSnapshot"

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "useSnapshot":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pageUseSnapshot, pathPath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " useSnapshot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SnapshotProvider"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v1

    .line 390
    .end local v1    # "useSnapshot":Ljava/lang/String;
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "startParamInfo":Lcom/alipay/mobile/nebula/startParam/H5StartParamInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :cond_2
    return-object v1

    .line 386
    .end local v3    # "startParamInfoList":Ljava/util/List;
    :cond_3
    :goto_1
    return-object v1
.end method
