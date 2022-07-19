.class Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;
.super Ljava/lang/Object;
.source "H5DevAppActivity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->a:Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->b:Z

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->d:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZZ[Ljava/lang/String;)V
    .locals 3
    .param p1, "pass"    # Z
    .param p2, "isSuperUser"    # Z
    .param p3, "domainWhiteList"    # [Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 95
    if-eqz p1, :cond_1

    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->b:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->d:Landroid/net/Uri;

    invoke-static {v0, v1, p3}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;Landroid/net/Uri;[Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->b:Z

    if-eqz v0, :cond_2

    .line 104
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->a(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 107
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$2;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->e:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;->finish()V

    .line 119
    return-void
.end method
