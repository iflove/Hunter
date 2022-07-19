.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/framework/permission/RequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->onCheckSelfPermission(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

.field final synthetic val$valueCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    .line 1139
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;->val$valueCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "ints"    # [I

    .line 1142
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    .line 1143
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckSelfPermission permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UCWebView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$4;->val$valueCallback:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 1145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1147
    :cond_0
    return-void
.end method
