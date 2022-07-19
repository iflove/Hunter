.class public abstract Lcom/alipay/mobile/nebulax/engine/common/c/c;
.super Ljava/lang/Object;
.source "CommonExitPerform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/common/c/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

.field private c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "NebulaXEngine.CommonExitPerform"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Lcom/alipay/mobile/nebulax/engine/common/c/c$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    return-object p0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;-><init>(Lcom/alipay/mobile/nebulax/engine/common/c/c;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->a:Z

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    iput-object p1, v0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->b:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->c:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    const-string v3, "collectDestroyJsApi"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 60
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;-><init>(Lcom/alipay/mobile/nebulax/engine/common/c/c;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
.end method

.method protected abstract a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method protected abstract a()Z
.end method

.method public b(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->c(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 48
    :goto_0
    return-void
.end method

.method protected abstract b()Z
.end method
