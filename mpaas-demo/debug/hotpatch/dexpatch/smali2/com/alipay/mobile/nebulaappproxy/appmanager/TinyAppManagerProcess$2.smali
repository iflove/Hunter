.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->c(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->e:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 17
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    .line 1334
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 1335
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "install result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    if-eqz v1, :cond_0

    .line 1337
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->d:Landroid/os/Bundle;

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->e:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->g:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1342
    :cond_0
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->h:Ljava/lang/String;

    iget-object v12, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v13, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->a:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v15, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->e:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$2;->i:Ljava/lang/String;

    const-string v14, "10003"

    move-object/from16 v16, v2

    invoke-static/range {v11 .. v16}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 1345
    return-void
.end method
