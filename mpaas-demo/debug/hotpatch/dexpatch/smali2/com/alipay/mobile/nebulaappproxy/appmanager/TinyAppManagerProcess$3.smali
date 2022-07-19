.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;
.super Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;
.source "TinyAppManagerProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic c:Lcom/alipay/mobile/nebula/provider/H5AppProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->c:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 1403
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1410
    return-void
.end method
