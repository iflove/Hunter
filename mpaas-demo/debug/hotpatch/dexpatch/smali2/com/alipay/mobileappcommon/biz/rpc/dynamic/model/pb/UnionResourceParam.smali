.class public final Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
.super Lcom/squareup/wire/Message;
.source "UnionResourceParam.java"


# static fields
.field public static final DEFAULT_BIZSCENE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

.field public static final DEFAULT_BUSINESS:Ljava/lang/String; = ""

.field public static final DEFAULT_CHECKNEW:Ljava/lang/Integer;

.field public static final DEFAULT_ISSUEDESC:Ljava/lang/String; = ""

.field public static final DEFAULT_RESOURCEIDV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_UPDATEVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_UUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_BIZSCENE:I = 0x8

.field public static final TAG_BIZTYPE:I = 0x1

.field public static final TAG_BUSINESS:I = 0x5

.field public static final TAG_CHECKNEW:I = 0x7

.field public static final TAG_ISSUEDESC:I = 0x4

.field public static final TAG_RESOURCEIDV:I = 0x6

.field public static final TAG_UPDATEVERSION:I = 0x3

.field public static final TAG_UUID:I = 0x2


# instance fields
.field public UUID:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizScene:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public business:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public checkNew:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public issueDesc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resourceIdv:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;",
            ">;"
        }
    .end annotation
.end field

.field public updateVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->DEFAULT_UUID:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->DEFAULT_RESOURCEIDV:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->DEFAULT_CHECKNEW:Ljava/lang/Integer;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->DEFAULT_BIZSCENE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    .line 84
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 85
    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 87
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    .line 88
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    .line 92
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    .line 94
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 134
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    .line 135
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    .line 136
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    .line 140
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    .line 141
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    .line 142
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 135
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 100
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    goto :goto_0

    .line 120
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    .line 121
    goto :goto_0

    .line 117
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    .line 118
    goto :goto_0

    .line 114
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    .line 115
    goto :goto_0

    .line 111
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    .line 112
    goto :goto_0

    .line 108
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    .line 109
    goto :goto_0

    .line 105
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    .line 106
    goto :goto_0

    .line 102
    :pswitch_7
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 103
    nop

    .line 127
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
    .locals 5

    .line 147
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 148
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_8

    .line 149
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v0, v3

    .line 151
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 152
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 153
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 154
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x1

    :goto_5
    add-int/2addr v0, v3

    .line 155
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v4

    :cond_7
    add-int v2, v0, v4

    .line 157
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->hashCode:I

    .line 159
    :cond_8
    return v2
.end method
