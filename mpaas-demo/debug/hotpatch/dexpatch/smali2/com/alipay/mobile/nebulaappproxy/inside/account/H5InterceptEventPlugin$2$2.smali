.class Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;
.super Ljava/lang/Object;
.source "H5InterceptEventPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

.field final synthetic val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$2;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->getAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->access$300(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 150
    .local v1, "microApplicationContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .local v2, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    goto :goto_0

    .line 153
    .end local v2    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_0
    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 155
    .restart local v2    # "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    :goto_0
    if-eqz v2, :cond_1

    .line 156
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    .line 158
    :cond_1
    return-void
.end method
