.class public Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;
.super Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.source "H5Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "H5Activity3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1312
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1315
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1316
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;->TAG:Ljava/lang/String;

    const-string v1, "onCreate H5Activity3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    return-void
.end method
