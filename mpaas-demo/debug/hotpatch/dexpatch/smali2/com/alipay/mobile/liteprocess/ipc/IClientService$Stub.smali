.class public abstract Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;
.super Landroid/os/Binder;
.source "IClientService.java"

# interfaces
.implements Lcom/alipay/mobile/liteprocess/ipc/IClientService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/ipc/IClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.alipay.mobile.liteprocess.ipc.IClientService"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/liteprocess/ipc/IClientService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.alipay.mobile.liteprocess.ipc.IClientService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    move-object v0, v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/liteprocess/ipc/IClientService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 38
    const v0, 0x5f4e5446

    const-string v1, "com.alipay.mobile.liteprocess.ipc.IClientService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 103
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    .local v1, "_arg0":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    goto :goto_0

    .line 109
    .end local v1    # "_arg0":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    :cond_0
    const/4 v1, 0x0

    .line 111
    .restart local v1    # "_arg0":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->remoteClientCall(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;

    move-result-object v3

    .line 112
    .local v3, "_result":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v3, p3, v2}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_1
    return v2

    .line 89
    .end local v1    # "_arg0":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    .end local v3    # "_result":Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallResult;
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 95
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .line 97
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->notifyBundleUpdate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v2

    .line 82
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->notifyLogout()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v2

    .line 62
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 68
    .local v3, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    .line 70
    .local v0, "_arg2":Z
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "_arg3":Landroid/os/Bundle;
    goto :goto_4

    .line 74
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :cond_5
    const/4 v4, 0x0

    .line 76
    .restart local v4    # "_arg3":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->moveTaskToFront(IZZLandroid/os/Bundle;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 54
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->isFinishing()Z

    move-result v0

    .line 56
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return v2

    .line 47
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/liteprocess/ipc/IClientService$Stub;->destoryClient()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    return v2

    .line 42
    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
