.class final Lcom/mpaas/nebula/adapter/api/MPNebula$2;
.super Ljava/lang/Object;
.source "MPNebula.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UaProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPNebula;->setUa(Lcom/alipay/mobile/nebula/provider/H5UaProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/provider/H5UaProvider;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPNebula$2;->val$uaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUa(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mpaas/nebula/adapter/api/MPNebula$2;->val$uaProvider:Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5UaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
