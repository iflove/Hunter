.class Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;
.super Ljava/lang/Object;
.source "H5DevAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->onResponse(ZZ[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;->a:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;->a:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->a:Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1$1;->a:Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity$1;->a:Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5LoadingDialog;->hide()V

    .line 92
    :cond_0
    return-void
.end method
