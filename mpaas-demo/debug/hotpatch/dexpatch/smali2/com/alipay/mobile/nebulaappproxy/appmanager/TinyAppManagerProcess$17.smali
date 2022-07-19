.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandlerUtil$FallbackResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
    .locals 0

    .line 1863
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 3
    .param p1, "result"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1866
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tryFallback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    if-eqz p1, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "nebula_force_offline"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$17;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1874
    return-void
.end method
