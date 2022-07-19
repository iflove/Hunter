.class final Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig$1;
.super Ljava/lang/Object;
.source "MPaaSRemoteBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    .locals 1
    .param p0, "source"    # Landroid/os/Parcel;

    .line 178
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;
    .locals 1
    .param p0, "size"    # I

    .line 183
    new-array v0, p0, [Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig$1;->a(Landroid/os/Parcel;)Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig$1;->a(I)[Lcom/alipay/mobile/quinox/bundle/MPaaSRemoteBundle$RemoteBundleConfig;

    move-result-object p1

    return-object p1
.end method
