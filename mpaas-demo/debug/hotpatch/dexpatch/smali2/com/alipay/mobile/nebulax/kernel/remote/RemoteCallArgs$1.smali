.class final Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs$1;
.super Ljava/lang/Object;
.source "RemoteCallArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    .locals 1

    .line 180
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;
    .locals 0

    .line 185
    new-array p1, p1, [Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs$1;->newArray(I)[Lcom/alipay/mobile/nebulax/kernel/remote/RemoteCallArgs;

    move-result-object p1

    return-object p1
.end method
