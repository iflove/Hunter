.class public Lcom/alipay/mobile/liteprocess/rpc/CallRet;
.super Ljava/lang/Object;
.source "CallRet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/liteprocess/rpc/CallRet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:[B

.field public invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

.field public isException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet$1;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/rpc/CallRet$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B

    .line 32
    const-class v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->isException:Z

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->invokeContext:Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/CallRet;->isException:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    return-void
.end method
