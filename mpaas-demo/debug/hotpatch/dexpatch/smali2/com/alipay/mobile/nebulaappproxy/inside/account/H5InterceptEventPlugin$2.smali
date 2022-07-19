.class Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;
.super Ljava/lang/Object;
.source "H5InterceptEventPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->showNotAuthedDialog(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

.field final synthetic val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->getH5Page(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 124
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->pageIsClose()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, v1

    .line 128
    .local v3, "context":Landroid/content/Context;
    move-object v3, v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const/4 v6, 0x0

    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$string;->not_authed_message:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->not_authed_retry:I

    .line 134
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->not_authed_exit:I

    .line 135
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v1, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v1, v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCancelable(Z)V

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 143
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 160
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 161
    return-void

    .line 129
    .end local v1    # "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    :cond_2
    :goto_0
    return-void

    .line 125
    .end local v3    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    return-void
.end method
