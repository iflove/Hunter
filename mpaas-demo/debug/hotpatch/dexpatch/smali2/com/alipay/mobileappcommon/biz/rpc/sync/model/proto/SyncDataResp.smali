.class public final Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
.super Lcom/squareup/wire/Message;
.source "SyncDataResp.java"


# static fields
.field public static final DEFAULT_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_REASON:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_UNIQID:Ljava/lang/String; = ""

.field public static final DEFAULT_UPDATETIME:Ljava/lang/String; = ""

.field public static final TAG_DATA:I = 0x5

.field public static final TAG_REASON:I = 0x2

.field public static final TAG_SUCCESS:I = 0x1

.field public static final TAG_TYPE:I = 0x4

.field public static final TAG_UNIQID:I = 0x3

.field public static final TAG_UPDATETIME:I = 0x6


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
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

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public uniqId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public updateTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;

    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 48
    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    .line 50
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;

    .line 90
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 90
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 61
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    .line 73
    goto :goto_0

    .line 69
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 66
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    .line 67
    goto :goto_0

    .line 63
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    .line 64
    nop

    .line 82
    :goto_0
    return-object p0

    nop

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

.method public final hashCode()I
    .locals 4

    .line 100
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 101
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->reason:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 104
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->uniqId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 105
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->type:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 106
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->data:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 107
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->updateTime:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int v2, v0, v1

    .line 108
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/sync/model/proto/SyncDataResp;->hashCode:I

    .line 110
    :cond_6
    return v2
.end method
