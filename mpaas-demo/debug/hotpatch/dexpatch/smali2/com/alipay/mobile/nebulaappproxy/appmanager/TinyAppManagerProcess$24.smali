.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "TinyAppManagerProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic c:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->e:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 10
    .param p1, "success"    # Z
    .param p2, "limit"    # Z

    .line 1134
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prepareUpdate...result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 1137
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 1139
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 1141
    :cond_0
    const/4 v0, 0x1

    const-string v2, "hasCheckedMinAppxVersion"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1143
    if-eqz p1, :cond_1

    .line 1145
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->e:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->g:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$24;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 1151
    return-void
.end method
