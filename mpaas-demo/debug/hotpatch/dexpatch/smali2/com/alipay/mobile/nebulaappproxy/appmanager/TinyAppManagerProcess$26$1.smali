.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    .line 1263
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1266
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;->a:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26;->c:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$26$1;)V

    .line 1269
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    .line 1301
    :cond_0
    return-void
.end method
