.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;


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

.field final synthetic b:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;Lcom/alipay/mobile/common/transport/download/DownloadRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0

    .line 1781
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->b:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->f:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 8

    .line 1784
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V

    .line 1785
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->b:Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->cancel()V

    .line 1788
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$string;->download_uccore_cancel_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "tip":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;->c:Landroid/app/Activity;

    const-string v4, ""

    const-string/jumbo v6, "\u7ee7\u7eed\u4e0b\u8f7d"

    const-string/jumbo v7, "\u4ecd\u7136\u53d6\u6d88"

    move-object v2, v1

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1790
    .local v2, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v2, v1

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$1;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 1797
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$15;Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 1804
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 1805
    return-void
.end method
