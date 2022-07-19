.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;)V
    .locals 0

    .line 1890
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1893
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sendToWebFail"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;->sendToWebFail(Ljava/lang/String;)V

    return-void

    .line 1897
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h5page is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$18;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1911
    return-void
.end method
