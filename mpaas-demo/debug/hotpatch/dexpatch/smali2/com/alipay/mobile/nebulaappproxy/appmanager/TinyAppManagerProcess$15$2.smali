.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

.field final synthetic b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;

    .line 1797
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V

    .line 1801
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;->b:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 1802
    return-void
.end method
