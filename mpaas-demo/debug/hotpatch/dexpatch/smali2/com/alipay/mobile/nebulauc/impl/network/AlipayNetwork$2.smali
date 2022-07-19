.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;
.super Ljava/lang/Object;
.source "AlipayNetwork.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->sendRequest(Lcom/uc/webview/export/internal/interfaces/IRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

.field final synthetic val$alipayRequest:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    .line 548
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;->val$alipayRequest:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;->val$alipayRequest:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork$2;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->useSpdy:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayNetwork;)Z

    move-result v1

    const-string v2, "NO"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->sendRequest(ZLjava/lang/String;Z)Z

    .line 552
    return-void
.end method
