.class public Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;
.super Ljava/lang/Object;
.source "H5BridgePolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BridgePolicy"

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()I
    .locals 1

    .line 21
    sget v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:I

    return v0
.end method

.method public static negotiate()V
    .locals 2

    .line 25
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "HuaweiMediaPad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 26
    const-string v1, "4.4.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 27
    const-string v1, "hw7d501l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 28
    const-string v1, "C208B011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->a:I

    .line 30
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "H5BridgePolicy"

    const-string v1, "HUAWEI MediaPad C208B011 matched!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method
