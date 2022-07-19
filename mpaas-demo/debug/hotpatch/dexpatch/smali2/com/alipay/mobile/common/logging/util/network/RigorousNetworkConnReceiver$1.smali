.class Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;
.super Ljava/lang/Object;
.source "RigorousNetworkConnReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->this$0:Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "logging_monitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->this$0:Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->a(Landroid/content/Context;)I
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->access$000(Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 87
    .local v1, "networkState":I
    move v1, v0

    const-string v2, "NetworkConnReceiver"

    if-nez v0, :cond_0

    .line 88
    const-string v0, "NetworkConnectivityReceiver#onReceive \u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->this$0:Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 91
    const-string v0, "NetworkConnectivityReceiver#onReceive \u7f51\u7edc\u53d8\u5316"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->this$0:Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/common/logging/util/network/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V

    .line 95
    .end local v1    # "networkState":I
    :cond_1
    return-void
.end method
