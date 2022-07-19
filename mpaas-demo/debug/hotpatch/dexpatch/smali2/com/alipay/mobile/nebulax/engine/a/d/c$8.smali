.class Lcom/alipay/mobile/nebulax/engine/a/d/c$8;
.super Ljava/lang/Object;
.source "NXWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;->b:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->b(Lcom/alipay/mobile/nebulax/engine/a/d/c;)Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$8;->a:Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToNative(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BridgeContext;)V

    .line 339
    return-void
.end method
