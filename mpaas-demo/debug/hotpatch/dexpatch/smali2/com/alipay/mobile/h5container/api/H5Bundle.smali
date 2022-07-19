.class public Lcom/alipay/mobile/h5container/api/H5Bundle;
.super Ljava/lang/Object;
.source "H5Bundle.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Bundle"


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation
.end field

.field private needCheckUc:Z

.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->needCheckUc:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/h5container/api/H5Listener;

    .line 30
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/h5container/api/H5Listener;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public isNeedCheckUc()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->needCheckUc:Z

    return v0
.end method

.method public setNeedCheckUc(Z)V
    .locals 0
    .param p1, "needCheckUc"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->needCheckUc:Z

    .line 52
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Bundle;->params:Landroid/os/Bundle;

    .line 44
    return-void
.end method
