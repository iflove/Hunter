.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig$1;
.super Ljava/lang/Object;
.source "BundleDownloadPageConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig$1;->newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;

    move-result-object p1

    return-object p1
.end method
