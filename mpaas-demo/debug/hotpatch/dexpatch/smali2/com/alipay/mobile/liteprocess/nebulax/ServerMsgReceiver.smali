.class public Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;
.super Landroid/os/Handler;
.source "ServerMsgReceiver.java"


# static fields
.field private static c:Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->c:Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->a:Landroid/os/Bundle;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->b:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static g()Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;
    .locals 2

    .line 31
    sget-object v0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->c:Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    if-nez v0, :cond_0

    .line 32
    const-class v0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    monitor-enter v0

    .line 33
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->c:Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    .line 34
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->c:Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "data":Landroid/os/Bundle;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->a:Landroid/os/Bundle;

    .line 56
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 57
    const-string/jumbo v0, "serverMsgBiz"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 58
    .local v3, "biz":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "NebulaXInt:LiteProcess"

    const-string v4, "ServerMsgReceiver biz empty!"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->b:Ljava/util/Map;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;

    .line 65
    .local v1, "handler":Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;
    move-object v1, v4

    if-eqz v4, :cond_2

    .line 66
    invoke-interface {v1, p1}, Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "NebulaXInt:LiteProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ServerMsgReceiver biz "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has not register handler"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "handler":Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerBiz(Ljava/lang/String;Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;)V
    .locals 4
    .param p1, "biz"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/alipay/mobile/liteprocess/nebulax/BizHandler;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "NebulaXInt:LiteProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ServerMsgReceiver registerBiz: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->b:Ljava/util/Map;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/nebulax/ServerMsgReceiver;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
