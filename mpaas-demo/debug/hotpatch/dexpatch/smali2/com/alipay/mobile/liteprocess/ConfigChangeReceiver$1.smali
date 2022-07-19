.class Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;
.super Ljava/lang/Object;
.source "ConfigChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;->b:Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/ConfigChangeReceiver$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess.ConfigChangeReceiver"

    const-string/jumbo v3, "notify config change error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method
