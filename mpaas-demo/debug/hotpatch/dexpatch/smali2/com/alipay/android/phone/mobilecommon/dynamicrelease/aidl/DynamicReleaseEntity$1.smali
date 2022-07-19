.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity$1;
.super Ljava/lang/Object;
.source "DynamicReleaseEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 148
    new-instance v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 158
    .local v0, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v0, v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->fileSize:I

    .line 160
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .locals 1
    .param p1, "size"    # I

    .line 165
    new-array v0, p1, [Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity$1;->newArray(I)[Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    move-result-object p1

    return-object p1
.end method
