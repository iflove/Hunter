.class final Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;
.super Ljava/lang/Object;
.source "TinyAppManagerProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    .line 1745
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1748
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V

    .line 1749
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;->a:Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;

    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14;->b:Landroid/app/Activity;

    const-string v3, ""

    const-string/jumbo v4, "\u5c0f\u7a0b\u5e8f\u6846\u67b6\u5347\u7ea7\u5b8c\u6210\uff0c\u5373\u5c06\u6253\u5f00\u5e94\u7528"

    const-string/jumbo v5, "\u786e\u5b9a"

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1750
    .local v1, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess$14$1;Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 1759
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 1760
    return-void
.end method
