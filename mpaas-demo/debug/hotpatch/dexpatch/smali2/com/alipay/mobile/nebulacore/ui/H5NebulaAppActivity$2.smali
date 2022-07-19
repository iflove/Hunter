.class Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;
.super Ljava/lang/Object;
.source "H5NebulaAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->e:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->c:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 77
    .local v2, "appMap":Ljava/util/Map;
    move-object v2, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;)V

    .line 119
    .local v0, "installProcess":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->b:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 121
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    .line 119
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 123
    return-void
.end method
