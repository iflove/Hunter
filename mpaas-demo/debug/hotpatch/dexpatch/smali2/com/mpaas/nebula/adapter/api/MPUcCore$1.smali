.class final Lcom/mpaas/nebula/adapter/api/MPUcCore$1;
.super Ljava/lang/Object;
.source "MPUcCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPUcCore;->initUc(Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPUcCore$1;->val$callback:Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 20
    const-class v0, Lcom/alipay/mobile/h5container/service/UcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/UcService;

    .line 21
    .local v0, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    move-result v1

    .line 23
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/api/MPUcCore$1;->val$callback:Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;

    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v2, v1}, Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;->onInit(Z)V

    .line 27
    .end local v1    # "result":Z
    :cond_0
    return-void
.end method
