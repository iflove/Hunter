.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;
.super Ljava/lang/Object;
.source "DynamicReleaseLauncher.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

.field private static e:Z


# instance fields
.field private b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

.field private c:Lcom/alipay/mobile/common/rpc/RpcFactory;

.field private d:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "appkey"

    const-string v1, "DynamicRelease"

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->f:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    .line 78
    invoke-static {p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 80
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "_appkey":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 88
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object v7, v5

    if-eqz v5, :cond_3

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v6

    .line 90
    .local v5, "obj":Ljava/lang/Object;
    move-object v5, v0

    if-eqz v0, :cond_3

    .line 91
    instance-of v0, v5, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .end local v2    # "_appkey":Ljava/lang/String;
    .local v0, "_appkey":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v0    # "_appkey":Ljava/lang/String;
    .restart local v2    # "_appkey":Ljava/lang/String;
    :cond_0
    instance-of v0, v5, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 94
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "_appkey":Ljava/lang/String;
    .restart local v0    # "_appkey":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "_appkey":Ljava/lang/String;
    .restart local v2    # "_appkey":Ljava/lang/String;
    :cond_1
    instance-of v0, v5, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 96
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "_appkey":Ljava/lang/String;
    .restart local v0    # "_appkey":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "_appkey":Ljava/lang/String;
    .restart local v2    # "_appkey":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 102
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MetaData.appkey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 108
    .local v0, "appkey":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appkey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->c:Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 158
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->c:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    const/4 v1, 0x0

    .line 260
    .local v1, "runtimeInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    .line 262
    .local v0, "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    new-instance v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    .line 266
    .end local v0    # "logContext":Lcom/alipay/mobile/common/logging/api/LogContext;
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->c:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->rpcRequest(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;Lcom/alipay/mobile/common/rpc/RpcFactory;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->e:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 53
    sput-boolean p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->e:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p3, "x3"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    if-nez v0, :cond_1

    .line 186
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    .line 190
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 192
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;

    return-object v0
.end method


# virtual methods
.method public cancelDownload(I)Z
    .locals 3
    .param p1, "token"    # I

    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;

    const/4 v1, 0x0

    .line 271
    .local v1, "requestInfo":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "DynamicRelease"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "productVersion"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "extraInfo"    # Ljava/lang/String;

    .line 199
    new-instance v6, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    .line 200
    return-void
.end method

.method public start(Landroid/os/Bundle;ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
    .locals 22
    .param p1, "requestData"    # Landroid/os/Bundle;
    .param p2, "token"    # I
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 208
    move-object/from16 v0, p1

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_UNKNOW:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v1

    const-string v2, "dynamicrelease_when"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, "when":I
    const-string v2, "dynamicrelease_bundles"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 210
    .local v2, "resIds":Ljava/util/List;
    const-string v3, "dynamicrelease_location"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "clientPosition":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">>>>>>>DynamicReleaseLauncher.start: when= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p2

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", clientPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    const-string v5, "DynamicRelease"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sput v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->when:I

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dynamicrelease_rpc_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 224
    .local v19, "threadName":Ljava/lang/String;
    move-object/from16 v15, p0

    iget-object v3, v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getDelay(I)J

    move-result-wide v20

    .line 227
    .local v20, "delay":J
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v13

    new-instance v14, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;

    move-object v3, v14

    move-object/from16 v4, p0

    move v5, v1

    move-object v6, v2

    move/from16 v7, p2

    move-object v8, v10

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher$3;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseLauncher;ILjava/util/List;ILjava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v15, v19

    move-wide/from16 v16, v20

    invoke-virtual/range {v13 .. v18}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 250
    return-void
.end method
