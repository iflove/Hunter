.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Context;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5Bundle;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 347
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->d:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5Context;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->b:Lcom/alipay/mobile/h5container/api/H5Bundle;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->c:Lcom/alipay/mobile/h5container/api/H5PageReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 350
    const-string v0, "H5NebulaService"

    const-string v1, "_createPageAsync begin commonSet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->d:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->a:Lcom/alipay/mobile/h5container/api/H5Context;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->b:Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->a(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 353
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "_createPageAsync after commonSet"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1$1;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method
