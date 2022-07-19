.class Lcom/alipay/mobile/nebulax/engine/a/a$2;
.super Ljava/lang/Object;
.source "WebViewEngineProxy.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/a;->setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a$2;->b:Lcom/alipay/mobile/nebulax/engine/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a$2;->b:Lcom/alipay/mobile/nebulax/engine/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/a;->a(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    const-string v0, "uc setup fail"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFail(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void
.end method
