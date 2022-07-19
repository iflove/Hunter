.class public final Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
.super Lcom/squareup/wire/Message;
.source "BatchSyncDataResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;,
        Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$SyncData;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATAMAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REASON:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_DATAMAP:I = 0x3

.field public static final TAG_REASON:I = 0x2

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public dataMap:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp$DataMap;",
            ">;"
        }
    .end annotation
.end field

.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->DEFAULT_DATAMAP:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;

    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 36
    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    .line 38
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 65
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;

    .line 66
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    .line 68
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 66
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    goto :goto_0

    .line 51
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    .line 52
    goto :goto_0

    .line 48
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    .line 49
    nop

    .line 58
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 73
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 74
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->reason:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    .line 77
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->dataMap:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    add-int v2, v0, v1

    .line 78
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/BatchSyncDataResp;->hashCode:I

    .line 80
    :cond_3
    return v2
.end method
