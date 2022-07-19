.class Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;
.super Ljava/lang/Object;
.source "HttpDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->notifyUpdateConfig(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field final synthetic val$coreConfig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 562
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$coreConfig:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    # getter for: Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$coreConfig:Ljava/lang/String;

    const-string v2, "amdc"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transport/utils/SwitchMonitorLogUtil;->monitorCoreSwitchRecvLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;->putSwitchSrc(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 568
    # getter for: Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$coreConfig:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->updateConfig(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    # getter for: Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transport/utils/SwitchMonitorLogUtil;->monitorSwitchUpdatedLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6536\u5230\u670d\u52a1\u5668\u7d27\u6025\u5f00\u5173\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;->val$coreConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP_DNS"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method
