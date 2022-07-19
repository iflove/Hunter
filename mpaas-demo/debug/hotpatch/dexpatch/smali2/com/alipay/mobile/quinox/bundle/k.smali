.class public Lcom/alipay/mobile/quinox/bundle/k;
.super Ljava/lang/Object;
.source "ReusableBundle.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# static fields
.field private static b:Lcom/alipay/mobile/quinox/bundle/k;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;-><init>()V

    const-string v1, "reused_bundles.ini"

    invoke-virtual {v0, p1, v1, p0}, Lcom/alipay/mobile/quinox/apkfile/ApkFileReader;->readAssets(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;)Z

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/quinox/bundle/k;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/k;->b:Lcom/alipay/mobile/quinox/bundle/k;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/alipay/mobile/quinox/bundle/k;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/bundle/k;->b:Lcom/alipay/mobile/quinox/bundle/k;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/alipay/mobile/quinox/bundle/k;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/bundle/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/quinox/bundle/k;->b:Lcom/alipay/mobile/quinox/bundle/k;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/k;->b:Lcom/alipay/mobile/quinox/bundle/k;

    return-object v0
.end method

.method static a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 12
    .param p0, "combination"    # Ljava/util/Map;
    .param p1, "curUpdateBundleKeys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    const/4 v0, 0x1

    .line 146
    .local v0, "check":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 148
    .local v1, "reused":Ljava/util/Map;
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 150
    .local v4, "entry":Ljava/util/Map$Entry;
    move-object v4, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 151
    .local v5, "bundleName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 153
    .local v6, "bundleVersions":Ljava/util/Set;
    const/4 v7, 0x0

    .line 154
    .local v7, "checkBundle":Z
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 155
    .local v9, "bundleVersion":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 156
    const/4 v7, 0x1

    .line 157
    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    goto :goto_2

    .line 160
    .end local v9    # "bundleVersion":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 163
    :cond_1
    :goto_2
    if-nez v7, :cond_2

    .line 164
    const/4 v0, 0x0

    .line 165
    goto :goto_3

    .line 167
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "bundleName":Ljava/lang/String;
    .end local v6    # "bundleVersions":Ljava/util/Set;
    .end local v7    # "checkBundle":Z
    :cond_2
    goto :goto_0

    .line 170
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "rMap":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/k;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/k;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->getInstance()Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->getReusedBundle()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 126
    .local v3, "mPaaSReusableBundleMap":Ljava/util/Map;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 127
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 131
    return-object v0

    .line 133
    :cond_2
    return-object v2
.end method

.method public onInputStream(Ljava/io/InputStream;)Z
    .locals 14
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "bRet":Z
    if-eqz p1, :cond_3

    .line 80
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/quinox/utils/ini/IniReader;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/quinox/utils/ini/IniReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ini/IniReader;->getSections()Ljava/util/Map;

    move-result-object v1

    .line 81
    .local v1, "sections":Ljava/util/Map;
    const/4 v0, 0x1

    .line 83
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/bundle/k;->a:Ljava/util/Map;

    .line 86
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 87
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 88
    .local v7, "section":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 90
    .local v8, "combination":Ljava/util/Map;
    new-instance v9, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v9, "map":Ljava/util/Map;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 93
    .local v4, "ent":Ljava/util/Map$Entry;
    move-object v4, v11

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 95
    .local v11, "bundleName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 96
    .local v5, "versions":Ljava/lang/String;
    move-object v5, v12

    invoke-static {v12}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 97
    const-string v12, "\\|"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v6, "verAry":[Ljava/lang/String;
    move-object v6, v12

    array-length v12, v12

    if-lez v12, :cond_0

    .line 99
    new-instance v12, Ljava/util/HashSet;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v12, "set":Ljava/util/Set;
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v4    # "ent":Ljava/util/Map$Entry;
    .end local v5    # "versions":Ljava/lang/String;
    .end local v6    # "verAry":[Ljava/lang/String;
    .end local v11    # "bundleName":Ljava/lang/String;
    .end local v12    # "set":Ljava/util/Set;
    :cond_0
    goto :goto_1

    .line 105
    :cond_1
    iget-object v10, p0, Lcom/alipay/mobile/quinox/bundle/k;->a:Ljava/util/Map;

    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "section":Ljava/lang/String;
    .end local v8    # "combination":Ljava/util/Map;
    .end local v9    # "map":Ljava/util/Map;
    goto :goto_0

    .line 110
    .end local v1    # "sections":Ljava/util/Map;
    :cond_2
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "BundleUpdate"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    return v0
.end method
