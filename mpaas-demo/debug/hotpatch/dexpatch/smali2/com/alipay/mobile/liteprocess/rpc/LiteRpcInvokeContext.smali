.class public Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;
.super Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
.source "LiteRpcInvokeContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext$1;

    invoke-direct {v0}, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;-><init>()V

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->timeout:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "requestHeadersSize":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 88
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 89
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "responseHeaderSize":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_1
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isUrgent:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isRpcV2:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowBgLogin:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowNonNet:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 2
    .param p1, "innerRpcInvokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;-><init>()V

    .line 19
    iget-wide v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->timeout:J

    iput-wide v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->timeout:J

    .line 20
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->gwUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->gwUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 22
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->compress:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->compress:Ljava/lang/Boolean;

    .line 23
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->appKey:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    .line 25
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    .line 26
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 27
    iget-object v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    .line 28
    iget-boolean v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isUrgent:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isUrgent:Z

    .line 29
    iget-boolean v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->isRpcV2:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isRpcV2:Z

    .line 30
    iget-boolean v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowBgLogin:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowBgLogin:Z

    .line 31
    iget-boolean v0, p1, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->allowNonNet:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowNonNet:Z

    .line 32
    invoke-virtual {p1}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getRpcInterceptorList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->rpcInterceptorList:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    iget-wide v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->gwUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->compress:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->resetCookie:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->bgRpc:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->responseHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowRetry:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isUrgent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->isRpcV2:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowBgLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/liteprocess/rpc/LiteRpcInvokeContext;->allowNonNet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    return-void
.end method
