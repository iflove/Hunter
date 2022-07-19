.class Lcom/alipay/mobile/nebulax/engine/a/d/g$2;
.super Ljava/lang/Object;
.source "WebExitPerform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/d/g;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/g;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->c(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check dsl overtime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->b:Lcom/alipay/mobile/nebulax/engine/a/d/g;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/d/g;->c(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 106
    :cond_0
    return-void
.end method
