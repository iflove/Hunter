.class final Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$3;
.super Ljava/lang/Object;
.source "H5SessionImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 747
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 744
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$3;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p1, "size"    # I

    .line 752
    new-array v0, p1, [Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 744
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl$3;->newArray(I)[Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    move-result-object p1

    return-object p1
.end method
