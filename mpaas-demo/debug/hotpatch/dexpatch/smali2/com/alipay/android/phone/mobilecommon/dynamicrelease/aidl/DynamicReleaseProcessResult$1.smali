.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult$1;
.super Ljava/lang/Object;
.source "DynamicReleaseProcessResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->valueOf(I)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 1
    .param p1, "size"    # I

    .line 81
    new-array v0, p1, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult$1;->newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object p1

    return-object p1
.end method
