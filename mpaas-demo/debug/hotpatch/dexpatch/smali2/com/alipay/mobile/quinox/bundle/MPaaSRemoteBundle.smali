.class public Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;
.super Ljava/lang/Object;
.source "MPaaSRemoteBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
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
.method private constructor <init>()V
    .locals 9

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->b:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->c:Ljava/util/Map;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 89
    .local v2, "configString":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 91
    .local v3, "configJSONArray":Lorg/json/JSONArray;
    move-object v3, v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    const/4 v0, 0x0

    move-object v4, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 93
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 94
    .local v1, "configObject":Lorg/json/JSONObject;
    move-object v1, v4

    const-string v5, "bundleName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "bundleName":Ljava/lang/String;
    const-string v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "version":Ljava/lang/String;
    const-string v6, "size"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "size":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    invoke-direct {v7, v4, v5, v6}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v7, "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    nop

    .end local v1    # "configObject":Lorg/json/JSONObject;
    .end local v4    # "bundleName":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "size":Ljava/lang/String;
    .end local v7    # "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 103
    .end local v0    # "i":I
    .end local v3    # "configJSONArray":Lorg/json/JSONArray;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    .line 105
    .local v3, "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v4, "map":Ljava/util/Map;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v1, "versionSet":Ljava/util/Set;
    move-object v1, v5

    iget-object v6, v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->version:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v5, v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->c:Ljava/util/Map;

    iget-object v6, v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    nop

    .end local v1    # "versionSet":Ljava/util/Set;
    .end local v3    # "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    .end local v4    # "map":Ljava/util/Map;
    goto :goto_1

    .line 114
    .end local v2    # "configString":Ljava/lang/String;
    :cond_2
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "BundleUpdate.MPaaSRemoteBundle"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "mpaas_remote_bundles_info.cfg"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v0

    .line 120
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 121
    .local v3, "result":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 122
    return-object v3

    .line 126
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    .line 125
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "BundleUpdate.MPaaSRemoteBundle"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;
    .locals 2

    .line 71
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->a:Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->a:Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->a:Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->a:Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;

    return-object v0
.end method


# virtual methods
.method public getRemoteBundleSize(Ljava/lang/String;)J
    .locals 6
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 132
    return-wide v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    .line 135
    .local v3, "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    iget-object v4, v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->bundleName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    :try_start_0
    iget-object v0, v3, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;->size:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "BundleUpdate.MPaaSRemoteBundle"

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "tr":Ljava/lang/Throwable;
    goto :goto_1

    .line 143
    .end local v3    # "remoteBundleConfig":Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    :cond_1
    goto :goto_0

    .line 145
    :cond_2
    :goto_1
    return-wide v1
.end method

.method public getReusedBundle()Ljava/util/Map;
    .locals 1
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

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle;->c:Ljava/util/Map;

    return-object v0
.end method
