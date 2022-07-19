.class public Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "H5WalletBaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletBaseActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "H5WalletBaseActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
