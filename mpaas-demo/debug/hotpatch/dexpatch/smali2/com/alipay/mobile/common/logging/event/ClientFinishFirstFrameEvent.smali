.class public Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;
.super Ljava/lang/Object;
.source "ClientFinishFirstFrameEvent.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/event/ClientEvent;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/Object;

    .line 18
    sget-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;->a:Z

    if-nez v0, :cond_0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->registerDateChangeReceiver()V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->b()V

    .line 23
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/network/NetWorkProvider;->registerLogNetworkConnReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ClientFinishFirstFrameEvent"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/event/ClientFinishFirstFrameEvent;->a:Z

    .line 30
    :cond_0
    return-void
.end method
