.class public abstract Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;
.super Landroid/os/Binder;
.source "IAPMInnerService.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_obtainExtraUsages:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    move-object v0, v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 38
    const-string v0, "com.alipay.android.phone.mobilesdk.apm.service.IAPMInnerService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 47
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 50
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->obtainExtraUsages(J)Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    return v1
.end method
