.class public final Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;
.super Lcom/squareup/wire/Message;
.source "BatchSyncDataResp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncData"
.end annotation


# static fields
.field public static final DEFAULT_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_UPDATETIME:Ljava/lang/String; = ""

.field public static final TAG_DATA:I = 0x2

.field public static final TAG_TYPE:I = 0x1

.field public static final TAG_UPDATETIME:I = 0x3


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public updateTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    .line 103
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 104
    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 132
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 133
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;

    .line 134
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 134
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    .line 120
    goto :goto_0

    .line 116
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    .line 117
    nop

    .line 126
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 141
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 142
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 145
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->updateTime:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int v2, v0, v1

    .line 146
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;->hashCode:I

    .line 148
    :cond_3
    return v2
.end method
