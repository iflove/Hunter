.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->d(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic d:Lcom/alipay/mobile/antui/basic/AULoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;Landroid/app/Activity;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/antui/basic/AULoadingView;)V
    .locals 0

    .line 1733
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->d:Lcom/alipay/mobile/antui/basic/AULoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 1736
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 1779
    return-void
.end method

.method public final onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 1744
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "test mj download success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1762
    return-void
.end method

.method public final onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 1740
    return-void
.end method

.method public final onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "v"    # D

    .line 1766
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "test mj "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1775
    return-void
.end method
