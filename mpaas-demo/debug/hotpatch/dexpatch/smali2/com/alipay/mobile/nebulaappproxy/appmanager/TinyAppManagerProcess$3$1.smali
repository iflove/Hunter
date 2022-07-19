.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    .line 1403
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->b:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$3;->c:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 1407
    return-void
.end method
