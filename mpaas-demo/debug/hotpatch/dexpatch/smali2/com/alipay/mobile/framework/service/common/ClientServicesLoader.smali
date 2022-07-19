.class public Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;
.super Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;
.source "ClientServicesLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ClientServicesLoader"

.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    sput-boolean v1, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public afterBootLoad()V
    .locals 3

    .line 157
    sget-boolean v0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 158
    sput-boolean v1, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->b:Z

    .line 160
    invoke-super {p0}, Lcom/alipay/mobile/framework/service/common/loader/CommonServiceLoadAgent;->afterBootLoad()V

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    sget-object v2, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postLoad()V
    .locals 0

    .line 140
    return-void
.end method

.method public preLoad()V
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/ClientServicesLoader;->mMicroAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessPipeline;->registerAdvice(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClientServicesLoader"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
