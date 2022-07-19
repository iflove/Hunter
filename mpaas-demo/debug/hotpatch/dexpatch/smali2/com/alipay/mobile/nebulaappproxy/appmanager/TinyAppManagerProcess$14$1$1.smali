.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;

    .line 1750
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V

    .line 1754
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->removeMainProcKeepAliveApp()V

    .line 1755
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z

    .line 1756
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1757
    return-void
.end method
