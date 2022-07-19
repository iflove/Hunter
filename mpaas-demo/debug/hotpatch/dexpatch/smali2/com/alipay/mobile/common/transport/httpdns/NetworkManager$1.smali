.class Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 94
    if-nez p2, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    # invokes: Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->a(Landroid/content/Context;)Z
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->access$100(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 103
    return-void

    .line 108
    :cond_1
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "HTTP_DNS_NetManager"

    const-string/jumbo v2, "setNetworkContext exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method
