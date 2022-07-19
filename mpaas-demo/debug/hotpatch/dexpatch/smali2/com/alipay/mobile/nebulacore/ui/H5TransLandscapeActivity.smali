.class public Lcom/alipay/mobile/nebulacore/ui/H5TransLandscapeActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.source "H5TransLandscapeActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TransLandscapeActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 14
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5TransLandscapeActivity;->setRequestedOrientation(I)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate, landscape activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5TransLandscapeActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
