.class public abstract Lcom/uc/sandboxExport/IChildProcessSetup$Stub;
.super Landroid/os/Binder;
.source "ProGuard"

# interfaces
.implements Lcom/uc/sandboxExport/IChildProcessSetup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/sandboxExport/IChildProcessSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/sandboxExport/IChildProcessSetup$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.uc.sandboxExport.IChildProcessSetup"

    invoke-virtual {p0, p0, v0}, Lcom/uc/sandboxExport/IChildProcessSetup$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/uc/sandboxExport/IChildProcessSetup;
    .locals 2

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    const-string v0, "com.uc.sandboxExport.IChildProcessSetup"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/uc/sandboxExport/IChildProcessSetup;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/uc/sandboxExport/IChildProcessSetup;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/uc/sandboxExport/IChildProcessSetup$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/uc/sandboxExport/IChildProcessSetup$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 42
    const-string v0, "com.uc.sandboxExport.IChildProcessSetup"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    .line 51
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/uc/sandboxExport/IChildProcessSetup$Stub;->preSetupConnection(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    return v1
.end method
