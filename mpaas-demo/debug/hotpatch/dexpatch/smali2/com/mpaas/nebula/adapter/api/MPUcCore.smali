.class public Lcom/mpaas/nebula/adapter/api/MPUcCore;
.super Ljava/lang/Object;
.source "MPUcCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initUc()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mpaas/nebula/adapter/api/MPUcCore;->initUc(Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;)V

    .line 11
    return-void
.end method

.method public static initUc(Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;

    .line 14
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mpaas/nebula/adapter/api/MPUcCore$1;

    invoke-direct {v1, p0}, Lcom/mpaas/nebula/adapter/api/MPUcCore$1;-><init>(Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    .local v0, "thread":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    .end local v0    # "thread":Ljava/lang/Thread;
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPUcCore$IUcInitCallback;->onInit(Z)V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method
