.class public Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;
.super Lcom/alipay/mobile/common/rpc/RpcException;
.source "LiteRpcException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException$1;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mOperationType:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mCode:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mMsg:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mControl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mIsControlOwn:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->errorSource:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->isBgRpc:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->alert:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 1
    .param p1, "rpcException"    # Lcom/alipay/mobile/common/rpc/RpcException;

    .line 27
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getOperationType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mOperationType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mCode:I

    .line 30
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mMsg:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getControl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mControl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->isControlOwn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mIsControlOwn:Z

    .line 33
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getErrorSource()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->errorSource:I

    .line 34
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->isBgRpc:Z

    .line 35
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/RpcException;->getAlert()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->alert:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mOperationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mControl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->mIsControlOwn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    iget v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->errorSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->isBgRpc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcException;->alert:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
