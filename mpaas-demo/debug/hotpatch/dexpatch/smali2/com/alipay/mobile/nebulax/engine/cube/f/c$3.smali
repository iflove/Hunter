.class Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;
.super Ljava/lang/Object;
.source "NXCubeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;->a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 233
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;->a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->j(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$3;->a:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    .line 234
    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "\u7cfb\u7edf\u5185\u90e8\u9519\u8bef"

    const-string v4, "\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;->onPageLoadError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method
