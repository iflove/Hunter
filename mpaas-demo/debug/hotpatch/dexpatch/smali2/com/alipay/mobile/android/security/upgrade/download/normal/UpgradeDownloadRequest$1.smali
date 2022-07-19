.class final Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;
.super Ljava/lang/Object;
.source "UpgradeDownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;
    .locals 2

    .line 204
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;-><init>(Landroid/os/Parcel;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;
    .locals 0

    .line 209
    new-array p1, p1, [Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest$1;->newArray(I)[Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadRequest;

    move-result-object p1

    return-object p1
.end method
