.class Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;
.super Ljava/lang/Object;
.source "H5Application.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5Application;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/wallet/H5Application;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5Application;Lcom/alipay/mobile/nebula/provider/TaConfigProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;->c:Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;->a:Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;->a:Lcom/alipay/mobile/nebula/provider/TaConfigProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5Application$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/TaConfigProvider;->releaseTinyAppConfig(Ljava/lang/String;)V

    .line 224
    return-void
.end method
