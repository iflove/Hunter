.class public final Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
.super Lcom/squareup/wire/Message;
.source "UnionResourceInfo.java"


# static fields
.field public static final DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final DEFAULT_DIFFMAXSIZE:Ljava/lang/Integer;

.field public static final DEFAULT_ITEM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_QUICKROLLBACK:Ljava/lang/Integer;

.field public static final DEFAULT_ROLLBACK:Ljava/lang/Boolean;

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_VERSION:Ljava/lang/String; = ""

.field public static final TAG_BIZTYPE:I = 0x1

.field public static final TAG_DIFFMAXSIZE:I = 0x8

.field public static final TAG_ITEM:I = 0x6

.field public static final TAG_MESSAGE:I = 0x3

.field public static final TAG_QUICKROLLBACK:I = 0x7

.field public static final TAG_ROLLBACK:I = 0x5

.field public static final TAG_SUCCESS:I = 0x2

.field public static final TAG_VERSION:I = 0x4


# instance fields
.field public bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public diffMaxSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public item:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public quickRollback:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public rollback:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 28
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 31
    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_ROLLBACK:Ljava/lang/Boolean;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_ITEM:Ljava/util/List;

    .line 33
    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_QUICKROLLBACK:Ljava/lang/Integer;

    .line 34
    sput-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->DEFAULT_DIFFMAXSIZE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 86
    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 88
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    .line 92
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    .line 93
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    .line 94
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    .line 95
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 135
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    .line 136
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    .line 137
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    .line 140
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    .line 141
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    .line 142
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    .line 143
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 136
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 101
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    goto :goto_0

    .line 121
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    .line 122
    goto :goto_0

    .line 118
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    .line 119
    goto :goto_0

    .line 115
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    .line 116
    goto :goto_0

    .line 112
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    .line 113
    goto :goto_0

    .line 109
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    .line 110
    goto :goto_0

    .line 106
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    .line 107
    goto :goto_0

    .line 103
    :pswitch_7
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 104
    nop

    .line 128
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

    .line 148
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 149
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 152
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 153
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 154
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 155
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x1

    :goto_5
    add-int/2addr v0, v3

    .line 156
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 157
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_7
    add-int v2, v0, v1

    .line 158
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->hashCode:I

    .line 160
    :cond_8
    return v2
.end method
