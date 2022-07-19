.class Lcom/alipay/mobile/nebulax/engine/a/d/b$3;
.super Ljava/lang/Object;
.source "NXH5WebViewClient.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/b;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/b;)V
    .locals 0

    .line 2135
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$3;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 2138
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/b$3;->a:Lcom/alipay/mobile/nebulax/engine/a/d/b;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/a/d/b;->a:Ljava/lang/String;

    const-string v1, "h5netsupervisor exec onPageFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    invoke-static {}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->getInstance()Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/networksupervisor/H5NetworkSuScheduler;->exec()V

    .line 2140
    const/4 v0, 0x0

    return v0
.end method
