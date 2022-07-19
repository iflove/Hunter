.class public abstract Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;
.super Landroid/os/Binder;
.source "IDynamicReleaseProcessor.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_processDynamicRelease:I = 0x1

.field static final TRANSACTION_processRpcLimit:I = 0x2

.field static final TRANSACTION_unzip:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.aidl.process.IDynamicReleaseProcessor"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.aidl.process.IDynamicReleaseProcessor"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    move-object v0, v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 38
    const-string v0, "com.alipay.android.phone.mobilecommon.dynamicrelease.aidl.process.IDynamicReleaseProcessor"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 78
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 84
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v1

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 72
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;->processRpcLimit(J)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v1

    .line 47
    .end local v2    # "_arg0":J
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Ljava/util/List;
    sget-object v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 56
    .local v4, "_arg3":Ljava/util/List;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;->processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v5

    .line 57
    .local v5, "_result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v5, :cond_4

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v5, p3, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 63
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    :goto_0
    return v1
.end method
