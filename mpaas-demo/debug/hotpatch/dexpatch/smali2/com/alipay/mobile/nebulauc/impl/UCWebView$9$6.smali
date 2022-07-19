.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5PermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->onGeneralPermissionsShowPrompt(Ljava/util/Map;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    .line 1225
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 3

    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1229
    .local v0, "results":Ljava/util/Map;
    const-string v1, "allow"

    const-string v2, "yes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1231
    return-void
.end method

.method public deny()V
    .locals 3

    .line 1235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .local v0, "results":Ljava/util/Map;
    const-string v1, "allow"

    const-string v2, "no"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$6;->val$callback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1238
    return-void
.end method
