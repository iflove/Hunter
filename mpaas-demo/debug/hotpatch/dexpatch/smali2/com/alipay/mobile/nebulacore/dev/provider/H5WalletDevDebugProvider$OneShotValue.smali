.class Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneShotValue"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field final synthetic c:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "used"    # Z

    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->c:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->a:Ljava/lang/Object;

    .line 392
    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$OneShotValue;->b:Z

    .line 393
    return-void
.end method
