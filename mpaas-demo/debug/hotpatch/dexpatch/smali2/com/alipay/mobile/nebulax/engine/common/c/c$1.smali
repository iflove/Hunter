.class Lcom/alipay/mobile/nebulax/engine/common/c/c$1;
.super Ljava/lang/Object;
.source "CommonExitPerform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/common/c/c;->c(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/common/c/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/c/c;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->a(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Lcom/alipay/mobile/nebulax/engine/common/c/c$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulax/engine/common/c/c$a;->a:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->b:Lcom/alipay/mobile/nebulax/engine/common/c/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/common/c/c;->b(Lcom/alipay/mobile/nebulax/engine/common/c/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectJsApiHandler overtime, do exit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/c$1;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 69
    :cond_0
    return-void
.end method
