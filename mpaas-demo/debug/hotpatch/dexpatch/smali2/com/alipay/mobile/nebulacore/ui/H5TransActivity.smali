.class public Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.source "H5TransActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity5;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity4;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity3;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity2;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity1;,
        Lcom/alipay/mobile/nebulacore/ui/H5TransActivity$H5TransActivity0;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TransActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 29
    return-void

    .line 33
    :cond_0
    :try_start_0
    const-string v0, "transAnimate"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    const/high16 v0, 0x33000000

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_1
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5TransActivity"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->setRequestedOrientation(I)V

    .line 22
    const-string v0, "H5TransActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->b()V

    .line 24
    return-void
.end method
