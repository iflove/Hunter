.class public Lcom/alipay/mobile/common/logging/LogContextImpl;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;,
        Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;
    }
.end annotation


# instance fields
.field private A:Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

.field private B:Ljava/lang/String;

.field private C:Lcom/alipay/mobile/common/logging/api/LogDAUTracker;

.field private D:Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

.field private E:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

.field private F:Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

.field public a:Z

.field private b:Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

.field private c:Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private volatile q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

.field private volatile r:Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;

.field private s:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

.field private t:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

.field private u:Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

.field private v:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

.field private final w:Z

.field private x:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

.field private y:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

.field private z:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    .line 83
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    .line 86
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Ljava/lang/String;

    .line 93
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/lang/ThreadLocal;

    .line 94
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    .line 95
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/lang/InheritableThreadLocal;

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Z

    .line 118
    new-instance v1, Lcom/alipay/android/phone/wallet/spmtracker/NullSpmMonitor;

    invoke-direct {v1}, Lcom/alipay/android/phone/wallet/spmtracker/NullSpmMonitor;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->y:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    .line 119
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->z:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 120
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->A:Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    .line 121
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->B:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->D:Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 227
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/LogCategory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/http/HttpClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/EventCategory;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    .line 232
    new-instance v1, Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 234
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->p()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 235
    .local v2, "hotpatchDesc":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string v1, "hotpatchDesc"

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->q()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v0, "hotpatchBundleVersion":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    const-string v1, "hotpatchBundleVersion"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->createInstance(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    .line 243
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    .line 245
    new-instance v1, Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->s:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    .line 246
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->t:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a()Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->v:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->w:Z

    .line 251
    if-eqz v1, :cond_2

    .line 252
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Ljava/util/Queue;

    goto :goto_0

    .line 254
    :cond_2
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x800

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Ljava/util/Queue;

    .line 256
    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Queue;

    .line 257
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "callStack"    # Ljava/lang/String;
    .param p2, "isBoot"    # Z

    .line 1247
    if-eqz p2, :cond_0

    .line 1248
    return-object p1

    .line 1253
    :cond_0
    const/4 v0, 0x0

    .line 1254
    .local v0, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    move-object v0, v1

    const-string v2, "file path is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1260
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1261
    .local v2, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1263
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1265
    move-object v0, v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1269
    const-string v1, ", logType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/StringBuilder;)V

    .line 1272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 1276
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_4
    goto :goto_1

    .line 1274
    :catchall_0
    move-exception v0

    .line 1275
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LogContext"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1277
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object p1
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "oldMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 666
    .local v0, "newMap":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 667
    monitor-enter p1

    .line 668
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 669
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 672
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 673
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Ljava/util/Queue;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    const-string v0, "LogContext"

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    goto :goto_0

    .line 525
    :catchall_0
    move-exception v1

    .line 529
    :goto_0
    const-string v1, ""

    .line 530
    .local v1, "event":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".monitor.action.upload.mdaplog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    if-eqz p4, :cond_0

    .line 532
    invoke-virtual {p1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 533
    const-string v2, "event"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_0
    const-string v2, "logCategory"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string/jumbo v2, "uploadUrl"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result v2

    const-string v3, "isMonitorBackground"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isStrictBackground()Z

    move-result v2

    const-string v3, "isStrictBackground"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isRelaxedBackground()Z

    move-result v2

    const-string v3, "isRelaxedBackground"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invokerProcessAlias"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/4 v2, 0x0

    .line 544
    .local v2, "isSuccess":Z
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 547
    goto :goto_2

    .line 545
    :catchall_1
    move-exception v3

    .line 546
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "uploadCoreByStartService"

    invoke-interface {v4, v0, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v3

    .line 550
    .local v3, "isDisableTools":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadCoreByStartService: start upload service"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 551
    .local v5, "message":Ljava/lang/StringBuilder;
    move-object v5, v4

    const-string v6, ", logCategory: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v4, ", success: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 553
    const-string v4, ", process: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v4, ", disableTools: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 555
    const-string v4, ", event: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-eqz v2, :cond_2

    .line 559
    return-void

    .line 561
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 562
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/logging/LogContextImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl$1;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "LogContext.upload"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 588
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;

    .line 1132
    const-string v0, "[native crash on main thread but NONE returned, java stack traces are used instead]\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 1135
    .local v1, "traces":[Ljava/lang/StackTraceElement;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1137
    aget-object v2, v1, v0

    .line 1138
    .local v2, "trace":Ljava/lang/StackTraceElement;
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1139
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    nop

    .end local v2    # "trace":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    .end local v0    # "i":I
    .end local v1    # "traces":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    .line 1145
    return-void
.end method

.method public static a(Ljava/util/Queue;)V
    .locals 4
    .param p0, "queue"    # Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 191
    if-nez p0, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 196
    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 197
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 198
    return-void

    .line 200
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 201
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callStack"    # Ljava/lang/String;
    .param p4, "isBoot"    # Z

    const-string v0, "LogContext"

    .line 1290
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    goto :goto_0

    .line 1291
    :catchall_0
    move-exception v1

    .line 1294
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".monitor.command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".monitor.action.TRACE_NATIVE_CRASH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v1, "filePath"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string v1, "callStack"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string v1, "isBoot"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1300
    const/4 v1, 0x0

    .line 1302
    .local v1, "isSuccess":Z
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1303
    const/4 v1, 0x1

    .line 1306
    goto :goto_1

    .line 1304
    :catchall_1
    move-exception v2

    .line 1305
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "handleNativeCrashBySendBroadcast"

    invoke-interface {v3, v0, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1308
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v2

    .line 1309
    .local v2, "isDisableTools":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleNativeCrashBySendBroadcast: send native crash broadcast"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1310
    .local v4, "message":Ljava/lang/StringBuilder;
    move-object v4, v3

    const-string v5, ", filePath: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const-string v3, ", isBoot: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1312
    const-string v3, ", success: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1313
    const-string v3, ", process: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    const-string v3, ", disableTools: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1315
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-eqz v1, :cond_0

    .line 1318
    const/4 v0, 0x1

    return v0

    .line 1320
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "lastOp"    # Ljava/lang/Integer;

    .line 683
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Queue;

    return-object v0
.end method

.method private static b()V
    .locals 7

    .line 630
    const-wide/16 v0, 0x0

    .local v0, "nowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 631
    move-wide v0, v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->d:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->MINIMUM_REQUEST_TIME_SPAN:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 632
    return-void

    .line 634
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v2

    iput-wide v0, v2, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->d:J

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "mdapupload"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->queryStrategy(Ljava/lang/String;Z)V

    .line 636
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 595
    const-string v0, ""

    .line 596
    .local v0, "event":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 597
    const-string v1, "event"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " syncUploadCoreByCategoryDirectly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogContext"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 604
    const-string/jumbo v1, "syncAllLog"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 607
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "sync all log to upload dir..."

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->t:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    goto :goto_0

    .line 609
    :catchall_0
    move-exception v1

    .line 611
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncUploadCoreByCategoryDirectly, syncLog: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->t:Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    return-void

    .line 619
    :catchall_1
    move-exception v1

    .line 620
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncUploadCoreByCategoryDirectly, uploadLog: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 1330
    nop

    .line 1332
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "LogContext"

    if-eqz p3, :cond_0

    .line 1334
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1335
    if-eqz v3, :cond_1

    .line 1337
    :try_start_1
    invoke-static {v3, p1, p2, v0}, Lcom/alipay/mobile/common/logging/CrashBridge;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1347
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1341
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "handleNativeCrashByAppendDirectly, !isBoot"

    invoke-interface {v3, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/logging/CrashBridge;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1343
    :try_start_3
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/CrashBridge;->deleteFileByPath(Ljava/lang/String;)V

    .line 1345
    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Lcom/alipay/mobile/common/logging/CrashBridge;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1349
    :cond_1
    goto :goto_1

    .line 1347
    :catchall_1
    move-exception p1

    move-object v3, v1

    .line 1348
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    :goto_1
    if-eqz p3, :cond_2

    if-nez v3, :cond_2

    .line 1353
    return-void

    .line 1356
    :cond_2
    if-eqz v3, :cond_3

    const-string p1, "IgnoreOnEmpty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1357
    return-void

    .line 1360
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleNativeCrashByAppendDirectly: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1361
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLogAutomationCrash(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1365
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1366
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1367
    array-length p2, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_4

    aget-object v5, p1, v4

    .line 1368
    const-string v6, "Crash"

    invoke-static {v6, v5, v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->reflectErrorLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1367
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1373
    :cond_4
    goto :goto_3

    .line 1371
    :catchall_2
    move-exception p1

    .line 1372
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1377
    :goto_3
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isKnownInvalidCrash(Ljava/lang/String;)Z

    move-result p1

    .line 1378
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->getProcessAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1379
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isForkedCrashOnlyForTracing(Ljava/lang/String;)Z

    move-result p2

    .line 1381
    if-eqz p2, :cond_5

    .line 1382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string p2, "isForkedCrashOnlyForTracing, ignore this crash info !"

    invoke-interface {p1, v2, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    return-void

    .line 1385
    :cond_5
    if-eqz p1, :cond_6

    .line 1386
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-object v5, p1

    goto/16 :goto_7

    .line 1388
    :cond_6
    const-string/jumbo p1, "main"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0xf

    const/16 v0, 0x9

    if-eqz p1, :cond_b

    .line 1390
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isIgnoreCrash(Ljava/lang/String;)I

    move-result p1

    .line 1392
    const/4 v4, 0x6

    if-ne p1, v4, :cond_8

    .line 1394
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isANRCrash(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1395
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-object v5, p1

    goto/16 :goto_7

    .line 1397
    :cond_7
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-object v5, p1

    goto/16 :goto_7

    .line 1399
    :cond_8
    if-eq p1, v0, :cond_a

    if-ne p1, p2, :cond_9

    goto :goto_4

    .line 1402
    :cond_9
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 1405
    move-object v5, p1

    goto :goto_7

    .line 1400
    :cond_a
    :goto_4
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-object v5, p1

    goto :goto_7

    .line 1405
    :cond_b
    const-string/jumbo p1, "push"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string/jumbo p1, "tools"

    .line 1406
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "ext"

    .line 1407
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "lite"

    .line 1408
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string/jumbo p1, "sandboxed_"

    .line 1409
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    .line 1416
    :cond_c
    const-string/jumbo p1, "unknown"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1417
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 1418
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isIgnoreCrash(Ljava/lang/String;)I

    move-result v4

    .line 1419
    if-eq v4, v0, :cond_e

    if-ne v4, p2, :cond_d

    goto :goto_5

    .line 1423
    :cond_d
    move-object v5, p1

    goto :goto_7

    .line 1421
    :cond_e
    :goto_5
    return-void

    .line 1424
    :cond_f
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-object v5, p1

    goto :goto_7

    .line 1410
    :cond_10
    :goto_6
    sget-object p1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 1411
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isIgnoreCrash(Ljava/lang/String;)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1412
    if-eq v4, v0, :cond_12

    if-ne v4, p2, :cond_11

    goto :goto_9

    .line 1416
    :cond_11
    move-object v5, p1

    .line 1427
    :goto_7
    nop

    .line 1429
    :try_start_7
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/CrashBridge;->getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1432
    move-object v7, p1

    goto :goto_8

    .line 1430
    :catchall_3
    move-exception p1

    move-object v7, v1

    .line 1434
    :goto_8
    :try_start_8
    new-instance v4, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    const-string/jumbo v10, "unknown"

    const/4 v11, 0x1

    move-object v6, v3

    move v8, p3

    invoke-virtual/range {v4 .. v11}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1436
    new-instance p2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object p3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 1442
    iget-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->analyzeNativeCrash(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1445
    return-void

    .line 1414
    :cond_12
    :goto_9
    return-void

    .line 1443
    :catchall_4
    move-exception p1

    .line 1444
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1446
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    return-object v0
.end method

.method private c()Ljava/lang/Integer;
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 678
    .local v0, "lastOp":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 679
    return-object v0
.end method

.method private d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .line 1804
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->F:Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    if-eqz v0, :cond_0

    .line 1805
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;->isUplaod()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1806
    const/4 v0, 0x0

    return v0

    .line 1808
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->s:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a()V

    .line 261
    return-void
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;)V
    .locals 0
    .param p1, "appendWorker"    # Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;

    monitor-enter p0

    .line 769
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->r:Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 768
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/LogContextImpl;
    .end local p1    # "appendWorker":Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public adjustRequestSpanByNetNotMatch()V
    .locals 1

    .line 1618
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->adjustRequestSpanByNetNotMatch()V

    .line 1619
    return-void
.end method

.method public adjustRequestSpanByReceived()V
    .locals 1

    .line 1613
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->adjustRequestSpanByNetNotMatch()V

    .line 1614
    return-void
.end method

.method public adjustRequestSpanByUploadFail()V
    .locals 1

    .line 1628
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->adjustRequestSpanByUploadFail()V

    .line 1629
    return-void
.end method

.method public adjustRequestSpanByZipFail()V
    .locals 1

    .line 1623
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->adjustRequestSpanByZipFail()V

    .line 1624
    return-void
.end method

.method public adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 569
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 572
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 574
    return-void
.end method

.method public appendFulllinkLog(Ljava/lang/Runnable;)V
    .locals 2

    .line 704
    if-nez p1, :cond_0

    .line 705
    const-string p1, "LogContext"

    const-string v0, "appendFulllinkLog: illegal runnable"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    if-nez v0, :cond_2

    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    if-nez v0, :cond_1

    .line 713
    new-instance v0, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->setDaemon(Z)V

    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    const-string v1, "fulllinkWorker"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->setName(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->q:Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl$FulllinkWorker;->start()V

    .line 718
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 722
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 723
    if-eqz p1, :cond_3

    .line 729
    return-void

    .line 724
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add runnable to queue fail, current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Queue;

    .line 725
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 727
    :catchall_1
    move-exception p1

    .line 728
    const-string v0, "LogContext"

    const-string v1, "appendFulllinkLog"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    return-void
.end method

.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 3

    .line 733
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->isIllegal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->r:Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;

    if-nez v0, :cond_2

    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->r:Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;

    if-nez v0, :cond_1

    .line 742
    new-instance v0, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    .line 743
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->setDaemon(Z)V

    .line 744
    const-string v1, "LogAppendWorker"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->setName(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;->start()V

    .line 747
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/LogContextImpl$AppendWorker;)V

    .line 749
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 753
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 754
    if-eqz p1, :cond_3

    .line 761
    return-void

    .line 755
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add log event to queue fail, current size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:Ljava/util/Queue;

    .line 756
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 758
    :catchall_1
    move-exception p1

    .line 760
    const-string v0, "LogContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appendLogEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 734
    :cond_4
    :goto_1
    const-string p1, "LogContext"

    const-string v0, "appendLogEvent: illegal logEvent"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method public final b(Ljava/util/Queue;)V
    .locals 5
    .param p1, "queue"    # Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;)V"
        }
    .end annotation

    .line 204
    if-nez p1, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 209
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v2, 0x0

    .line 210
    .local v2, "event":Lcom/alipay/mobile/common/logging/api/LogEvent;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 211
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 212
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Z

    .line 213
    return-void

    .line 216
    .end local v2    # "event":Lcom/alipay/mobile/common/logging/api/LogEvent;
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 218
    .restart local v2    # "event":Lcom/alipay/mobile/common/logging/api/LogEvent;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 219
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Z

    .line 220
    return-void
.end method

.method public backupCurrentFile(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "isBackupOthers"    # Z

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->s:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Ljava/lang/String;Z)V

    .line 351
    return-void
.end method

.method public commitExtrasToUpdate()V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->J()V

    .line 1103
    return-void
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 361
    return-void
.end method

.method public flush(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 366
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string v2, "flush"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    move-object v1, v3

    .line 371
    .local v1, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    move-object v1, v0

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/LogEvent;->setBundle(Landroid/os/Bundle;)V

    .line 372
    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 377
    return-void
.end method

.method public flush(Z)V
    .locals 1
    .param p1, "sync"    # Z

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public getAbtestInfoGetter()Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;
    .locals 1

    .line 1700
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->u:Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    return-object v0
.end method

.method public getApkUniqueId()Ljava/lang/String;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->x:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    return-object v0
.end method

.method public getBirdNestVersion()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBizExternParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1665
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:Ljava/util/Map;

    return-object v0
.end method

.method public getBundleVersion()Ljava/lang/String;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelProperties()Ljava/util/Properties;
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->w()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientStatus(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isNativeCrash"    # Z

    .line 1535
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientStatus(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "traceNativeCrashWhenBoot"    # Z
    .param p2, "isNativeCrash"    # Z
    .param p3, "exception"    # Ljava/lang/String;

    .line 1540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1541
    .local v1, "now":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getClientStatus: , now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", gotoBackgroundTimestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", clientLaunchTimestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", processSetupTimestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v4

    iget-wide v4, v4, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1541
    const-string v4, "LogContext"

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-wide/16 v5, 0x1

    const-string v0, "background"

    const-wide/16 v7, 0x0

    if-eqz p2, :cond_2

    .line 1550
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/logging/CrashBridge;->getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    .line 1551
    .local v9, "clientStatus":Ljava/lang/String;
    move-object v9, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1552
    return-object v9

    .line 1555
    :cond_0
    if-eqz p1, :cond_2

    .line 1556
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getBackgroundTime()J

    move-result-wide v3

    .line 1557
    .local v3, "lastBackgroudTime":J
    invoke-static {}, Lcom/alipay/mobile/common/logging/CrashBridge;->getCrashTime()J

    move-result-wide v10

    move-wide v12, v7

    .line 1559
    .local v12, "crashTime":J
    move-wide v12, v10

    cmp-long v14, v10, v7

    if-lez v14, :cond_1

    cmp-long v10, v3, v7

    if-lez v10, :cond_1

    cmp-long v7, v12, v1

    if-gez v7, :cond_1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 1560
    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long v7, v12, v5

    if-lez v7, :cond_1

    .line 1561
    return-object v0

    .line 1563
    :cond_1
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 1569
    .end local v3    # "lastBackgroudTime":J
    .end local v9    # "clientStatus":Ljava/lang/String;
    .end local v12    # "crashTime":J
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v3

    iget-wide v9, v3, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->c:J

    cmp-long v3, v9, v7

    if-lez v3, :cond_3

    .line 1570
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v3

    iget-wide v9, v3, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->c:J

    sub-long v9, v1, v9

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-lez v3, :cond_3

    .line 1571
    return-object v0

    .line 1575
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v3

    iget-wide v9, v3, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->b:J

    cmp-long v3, v9, v7

    if-gtz v3, :cond_9

    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v3

    iget-wide v9, v3, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a:J

    cmp-long v3, v9, v7

    if-lez v3, :cond_9

    .line 1576
    invoke-static {}, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a()Lcom/alipay/mobile/common/logging/event/ClientEventHelper;

    move-result-object v3

    iget-wide v7, v3, Lcom/alipay/mobile/common/logging/event/ClientEventHelper;->a:J

    sub-long v7, v1, v7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v7, v5

    if-lez v3, :cond_4

    .line 1577
    return-object v0

    .line 1580
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v3

    .line 1582
    .local v3, "startupReason":Ljava/util/Map;
    const/4 v5, 0x0

    .line 1583
    .local v5, "actionName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1585
    .local v6, "componentName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1586
    const-string v7, "ActionName"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 1587
    const-string v7, "ComponentName"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 1591
    :cond_5
    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/CrashBridge;->isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1593
    .local v7, "isBackgroundLaunch":Z
    const/4 v8, 0x0

    .line 1594
    .local v8, "isPotentialBackgroundCrash":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1595
    invoke-static/range {p3 .. p3}, Lcom/alipay/mobile/common/logging/CrashBridge;->isPotentialBackgroundCrash(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v4

    .line 1598
    :cond_6
    if-nez v7, :cond_8

    if-eqz v8, :cond_7

    goto :goto_0

    .line 1603
    .end local v3    # "startupReason":Ljava/util/Map;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "isBackgroundLaunch":Z
    .end local v8    # "isPotentialBackgroundCrash":Z
    :cond_7
    goto :goto_1

    .line 1599
    .restart local v3    # "startupReason":Ljava/util/Map;
    .restart local v5    # "actionName":Ljava/lang/String;
    .restart local v6    # "componentName":Ljava/lang/String;
    .restart local v7    # "isBackgroundLaunch":Z
    .restart local v8    # "isPotentialBackgroundCrash":Z
    :cond_8
    :goto_0
    return-object v0

    .line 1601
    .end local v3    # "startupReason":Ljava/util/Map;
    .end local v5    # "actionName":Ljava/lang/String;
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "isBackgroundLaunch":Z
    .end local v8    # "isPotentialBackgroundCrash":Z
    :catchall_0
    move-exception v0

    .line 1602
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_9
    :goto_1
    const-string v0, "foreground"

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLoggingInfo()Landroid/os/Parcelable;
    .locals 1

    .line 1831
    invoke-static {}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->getCurrentPageInfo()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageId()Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePerformanceScore()I
    .locals 2

    .line 1639
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/YearClass;->get(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1640
    :catchall_0
    move-exception v0

    .line 1641
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LogContext"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    const v1, 0x7fffffff

    return v1
.end method

.method public getDevicePerformanceScoreNew()Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;
    .locals 3

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->get(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/helper/DevicePerformanceScoreHelper;->getScore()Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1752
    :catchall_0
    move-exception v0

    .line 1753
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LogContext"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1754
    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;->LOW:Lcom/alipay/mobile/common/logging/api/LogContext$DevicePerformanceScore;

    return-object v1
.end method

.method public getHotpatchBundleVersion()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotpatchDesc()Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotpatchVersion()Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 318
    .local v2, "map":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 319
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 321
    :cond_0
    return-object v1
.end method

.method public getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    return-object v0
.end method

.method public getLogCustomerControl()Lcom/alipay/mobile/common/logging/api/LogCustomerControl;
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    return-object v0
.end method

.method public getLogDAUTracker()Lcom/alipay/mobile/common/logging/api/LogDAUTracker;
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->C:Lcom/alipay/mobile/common/logging/api/LogDAUTracker;

    return-object v0
.end method

.method public getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->z:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    return-object v0
.end method

.method public getLogHost()Ljava/lang/String;
    .locals 4

    .line 1454
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/String;

    const-string v1, "LogContext"

    if-nez v0, :cond_1

    .line 1456
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v2, 0x0

    .line 1457
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v2, v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "logging.gateway"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/String;

    .line 1459
    if-nez v0, :cond_0

    .line 1460
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1503
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1504
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    .line 1506
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLogHost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",contextInfo host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 1507
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isHttpUpload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->a()Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLogStrategyInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;",
            ">;"
        }
    .end annotation

    .line 1680
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getLogStrategyInfos()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLogUploadRpcClient()Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->A:Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    return-object v0
.end method

.method public getMetDsLogHost()Ljava/lang/String;
    .locals 1

    .line 1530
    const-string v0, ""

    return-object v0
.end method

.method public getMpaasBaseline()Ljava/lang/String;
    .locals 1

    .line 1846
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMpaasMode()Ljava/lang/String;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfoGetter()Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->D:Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductABI()Ljava/lang/String;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductABIBit()Ljava/lang/String;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpmMonitor()Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->y:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    return-object v0
.end method

.method public getStorageParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 265
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 266
    .local v1, "param":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_0
    return-object v1
.end method

.method public getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->F:Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    return-object v0
.end method

.method public getTraceLoggerInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->E:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSessionId()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVituralUserId()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCertificationSwitchOff()Z
    .locals 1

    .line 1871
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->z()Z

    move-result v0

    return v0
.end method

.method public isDisableToolsProcess()Z
    .locals 1

    .line 655
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v0

    return v0
.end method

.method public isEnableTrafficLimit()Z
    .locals 1

    .line 660
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isEnableTrafficLimit()Z

    move-result v0

    return v0
.end method

.method public isLogNeedEncrypt()Z
    .locals 2

    .line 1881
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLogSwitchOff()Z
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->x()Z

    move-result v0

    return v0
.end method

.method public isLowEndDevice()Z
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LowEndDeviceUtil;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPositiveDiagnose()Z
    .locals 1

    .line 645
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isPositiveDiagnose()Z

    move-result v0

    return v0
.end method

.method public isPrintTraceLogRelease()Z
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->C()Z

    move-result v0

    return v0
.end method

.method public isSupport32()Z
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->F()Z

    move-result v0

    return v0
.end method

.method public isSupport64()Z
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->G()Z

    move-result v0

    return v0
.end method

.method public isTrafficMonitorEnabled()Z
    .locals 1

    .line 1866
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->y()Z

    move-result v0

    return v0
.end method

.method public isZipAndSevenZip()Z
    .locals 1

    .line 650
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isZipAndSevenZip()Z

    move-result v0

    return v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventParam"    # Ljava/lang/Object;

    .line 1127
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->v:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/event/ClientEvent;

    move-result-object v0

    .line 1128
    .local v0, "clientEvent":Lcom/alipay/mobile/common/logging/event/ClientEvent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->v:Lcom/alipay/mobile/common/logging/event/ClientEventManager;

    invoke-virtual {v1, p1, v0, p2}, Lcom/alipay/mobile/common/logging/event/ClientEventManager;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/event/ClientEvent;Ljava/lang/Object;)V

    .line 1129
    return-void
.end method

.method public putBizExternParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1658
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    :cond_0
    return-void
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 274
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 302
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 304
    .local v0, "oldMap":Ljava/util/Map;
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 307
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 308
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void

    .line 313
    .end local v0    # "oldMap":Ljava/util/Map;
    :cond_2
    :goto_1
    return-void
.end method

.method public refreshSessionId()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->H()V

    .line 960
    return-void
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    if-eqz p1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 329
    .local v1, "oldMap":Ljava/util/Map;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 336
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void

    .line 338
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v1    # "oldMap":Ljava/util/Map;
    :cond_2
    return-void
.end method

.method public resetExtrasToSet()V
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->I()V

    .line 1098
    return-void
.end method

.method public resetLogHost()V
    .locals 1

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    .line 1018
    return-void
.end method

.method public revertRequestSpanToNormal()V
    .locals 1

    .line 1633
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->revertRequestSpanToNormal()V

    .line 1634
    return-void
.end method

.method public runningBit()I
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->K()I

    move-result v0

    return v0
.end method

.method public setAbtestInfoGetter(Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;)V
    .locals 0
    .param p1, "abtestInfoGetter"    # Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    .line 1695
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->u:Lcom/alipay/mobile/common/logging/api/abtest/AbtestInfoGetter;

    .line 1696
    return-void
.end method

.method public setApkUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1, "apkUniqueId"    # Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->t(Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public setBehavorLogListener(Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    .line 1685
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->x:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    .line 1686
    return-void
.end method

.method public setBirdNestVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "birdNestVersion"    # Ljava/lang/String;

    .line 989
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->r(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public setBirdNestVersionNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "birdNestVersion"    # Ljava/lang/String;

    .line 1087
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->K(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public setBundleVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleVersion"    # Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->q(Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public setBundleVersionNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleVersion"    # Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->J(Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public setChannelIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->x(Ljava/lang/String;)V

    .line 1023
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->j(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public setClientIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .line 1052
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->D(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public setCurrentLoggingInfo(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "loggingInfo"    # Landroid/os/Parcelable;

    .line 1836
    invoke-static {p1}, Lcom/alipay/android/phone/wallet/spmtracker/SpmTracker;->setCurrentPageInfo(Landroid/os/Parcelable;)V

    .line 1837
    return-void
.end method

.method public setCurrentPageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;

    .line 949
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->i(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 944
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->k(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public setDeviceIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->E(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public setHotpatchBundleVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchBundleVersion"    # Ljava/lang/String;

    .line 979
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->p(Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public setHotpatchBundleVersionNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchBundleVersion"    # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->I(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public setHotpatchDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchDesc"    # Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->o(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method public setHotpatchDescNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchDesc"    # Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->H(Ljava/lang/String;)V

    .line 1073
    return-void
.end method

.method public setHotpatchVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchVersion"    # Ljava/lang/String;

    .line 969
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->n(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public setHotpatchVersionNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "hotpatchVersion"    # Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->G(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->l(Ljava/lang/String;)V

    .line 955
    return-void
.end method

.method public setLanguageNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->F(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public setLogAppenderistener(Lcom/alipay/mobile/common/logging/api/LogAppenderistener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    .line 1670
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    .line 1671
    return-void
.end method

.method public setLogCustomerControl(Lcom/alipay/mobile/common/logging/api/LogCustomerControl;)V
    .locals 0
    .param p1, "logCustomerControl"    # Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    .line 1735
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Lcom/alipay/mobile/common/logging/api/LogCustomerControl;

    .line 1736
    return-void
.end method

.method public setLogDAUTracker(Lcom/alipay/mobile/common/logging/api/LogDAUTracker;)V
    .locals 0
    .param p1, "logDAUTracker"    # Lcom/alipay/mobile/common/logging/api/LogDAUTracker;

    .line 1760
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->C:Lcom/alipay/mobile/common/logging/api/LogDAUTracker;

    .line 1761
    return-void
.end method

.method public setLogEncryptClient(Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;)V
    .locals 0
    .param p1, "logEncryptClient"    # Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 1715
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->z:Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    .line 1716
    return-void
.end method

.method public setLogHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "logHost"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->u(Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method public setLogHostNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "logHost"    # Ljava/lang/String;

    .line 1011
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->M(Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public setLogNeedEncrypt(Ljava/lang/String;)V
    .locals 1
    .param p1, "logNeedEncrypt"    # Ljava/lang/String;

    .line 1876
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->w(Ljava/lang/String;)V

    .line 1877
    return-void
.end method

.method public setLogNeedEncryptNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "logNeedEncrypt"    # Ljava/lang/String;

    .line 1886
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->O(Ljava/lang/String;)V

    .line 1887
    return-void
.end method

.method public setLogUploadRpcClient(Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;)V
    .locals 0
    .param p1, "rpcClient"    # Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    .line 1705
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->A:Lcom/alipay/mobile/common/logging/api/rpc/RpcClient;

    .line 1706
    return-void
.end method

.method public setMaxLogSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1745
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(I)V

    .line 1746
    return-void
.end method

.method public setMpaasMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mpaasMode"    # Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->v(Ljava/lang/String;)V

    .line 1852
    return-void
.end method

.method public setMpaasModeNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "mpaasMode"    # Ljava/lang/String;

    .line 1861
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->N(Ljava/lang/String;)V

    .line 1862
    return-void
.end method

.method public setNetworkInfoGetter(Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;)V
    .locals 0
    .param p1, "networkInfoGetter"    # Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    .line 1770
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->D:Lcom/alipay/mobile/common/logging/api/network/NetworkInfoGetter;

    .line 1771
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageId"    # Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->s(Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public setPackageIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageId"    # Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->L(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public setProductIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .line 1037
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->A(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "productVersion"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->f(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method public setProductVersionNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "productVersion"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->B(Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "releaseCode"    # Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method public setReleaseCodeNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "releaseCode"    # Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->z(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 1
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->c(Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public setReleaseTypeNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "releaseType"    # Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->y(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceId"    # Ljava/lang/String;

    .line 964
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->m(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public setSpmMonitor(Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;)V
    .locals 0
    .param p1, "spmMonitor"    # Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    .line 1725
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->y:Lcom/alipay/android/phone/wallet/spmtracker/ISpmMonitor;

    .line 1726
    return-void
.end method

.method public setToolsUploadInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;)V
    .locals 0
    .param p1, "toolsUploadInterceptor"    # Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    .line 1790
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->F:Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    .line 1791
    return-void
.end method

.method public setTraceLoggerInterceptor(Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;)V
    .locals 0
    .param p1, "traceLoggerInterceptor"    # Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    .line 1780
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->E:Lcom/alipay/mobile/common/logging/api/interceptor/TraceLoggerInterceptor;

    .line 1781
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g(Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public setUserIdNoCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->C(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public setUserSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public setVituralUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "vituralUserId"    # Ljava/lang/String;

    .line 934
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->p:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h(Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .param p2, "flag"    # I

    .line 1122
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/logging/CrashBridge;->setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V

    .line 1123
    return-void
.end method

.method public syncAppendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 1
    .param p1, "logEvent"    # Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->s:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 694
    return-void
.end method

.method public syncLogConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 1653
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->syncLogConfig(Ljava/lang/String;)V

    .line 1654
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "illegal to invoke \'takedownExceptionHandler\' function"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "LogContext"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1118
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callStack"    # Ljava/lang/String;
    .param p3, "isBoot"    # Z

    .line 1154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "traceNativeCrash, filePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isBoot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogContext"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    const-string v2, "com.alipay.mobile.common.logging.process.LogReceiverInToolsProcess"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_4

    .line 1160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1161
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isSandboxProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1211
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1214
    return v5

    .line 1218
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    .line 1219
    .local v3, "intent":Landroid/content/Intent;
    move-object v3, v1

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1226
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1229
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1230
    return v5

    .line 1234
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "traceNativeCrash, error: unknown process "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1239
    return v5

    .line 1165
    :cond_4
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 1171
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_crash"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1176
    .local v3, "parent":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 1179
    goto :goto_1

    .line 1177
    :catch_0
    move-exception v6

    .line 1180
    :goto_1
    if-nez v3, :cond_5

    .line 1181
    const-string v2, "CrashCombineUtils"

    const-string v4, "getLatestTombAndDelOld, parent is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return v5

    .line 1184
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1185
    .local v4, "files":[Ljava/io/File;
    move-object v4, v6

    if-eqz v6, :cond_6

    array-length v6, v4

    if-gtz v6, :cond_7

    .line 1186
    :cond_6
    return v5

    .line 1190
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1193
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1195
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    const-string v3, "com.alipay.mobile.logmonitor.ClientMonitorWakeupReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1198
    :cond_8
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    :goto_2
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Ljava/lang/String;

    .line 640
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->updateLogStrategy(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 1
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 429
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    const-string v1, " do not upload by tools, hold on..."

    const-string v2, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    const-string v3, "com.alipay.mobile.common.logging.process.LogServiceInMainProcess"

    const-string v4, "LogContext"

    if-nez v0, :cond_6

    .line 437
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isExtProcess()Z

    move-result v0

    if-nez v0, :cond_6

    .line 438
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 469
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isPushProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isRealTimeLogCategory(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v5

    .line 474
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 476
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 485
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 486
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 488
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v5

    .line 489
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v1, v0

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 499
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isToolsProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 505
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload, error: unknown process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-interface {v0, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->adjustUploadCoreByCategoryDirectly(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 440
    :cond_6
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 442
    .local v5, "isStartTools":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isRealTimeLogCategory(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/MPLoggerInside;->isNeedUploadInMainProcess()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 445
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDisableToolsProcess()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    const-string v3, "com.alipay.mobile.common.logging.process.LogServiceInPushProcess"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 453
    :cond_8
    const/4 v5, 0x1

    .line 454
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 444
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    :goto_2
    if-eqz v5, :cond_a

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->e()Z

    move-result v2

    if-nez v2, :cond_a

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 464
    :cond_a
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v5    # "isStartTools":Z
    nop

    .line 513
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b()V

    .line 514
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;)V
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v2, "uploadByType"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 388
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;

    .line 394
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v2, "uploadByType"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    move-object v1, v3

    .line 399
    .local v1, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    move-object v1, v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/LogEvent;->setUploadUrl(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 401
    return-void
.end method

.method public uploadAfterSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "uploadUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 406
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v2, "uploadByType"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    move-object v1, v3

    .line 411
    .local v1, "logEvent":Lcom/alipay/mobile/common/logging/api/LogEvent;
    move-object v1, v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/LogEvent;->setUploadUrl(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/common/logging/api/LogEvent;->setBundle(Landroid/os/Bundle;)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 414
    return-void
.end method
