.class public final Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;
.super Lcom/squareup/wire/Message;
.source "SyncDataReq.java"


# static fields
.field public static final DEFAULT_UNIQID:Ljava/lang/String; = ""

.field public static final TAG_UNIQID:I = 0x1


# instance fields
.field public uniqId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;

    .line 21
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 22
    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 41
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    .line 36
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 48
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 49
    .local v2, "result":I
    move v2, v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->uniqId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataReq;->hashCode:I

    return v1
.end method
