.class Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;
.super Ljava/lang/Object;
.source "NXCubeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 215
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->i(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    .line 216
    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->h(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;->a:Ljava/lang/String;

    const/4 v3, -0x1

    const-string v4, "\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-interface {v0, v1, v3, v2, v4}, Lcom/alipay/mobile/nebulax/engine/api/extensions/page/PageLoadErrorPoint;->onPageLoadError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
