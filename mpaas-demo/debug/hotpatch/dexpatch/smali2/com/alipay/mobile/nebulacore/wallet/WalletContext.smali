.class public Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
.super Lcom/alipay/mobile/h5container/api/H5Context;
.source "WalletContext.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/MicroApplication;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    return-object v0
.end method

.method public setMicroApplication(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0
    .param p1, "ma"    # Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->a:Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 22
    return-void
.end method
