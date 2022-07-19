.class public final Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;
.super Lcom/squareup/wire/Message;
.source "ClientPGInfoReqPB.java"


# static fields
.field public static final DEFAULT_APPCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LASTTIME:Ljava/lang/String; = ""

.field public static final DEFAULT_MANUFACTURER:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILEBRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILEMODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_NETTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_OSVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PLATFORM:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_ROMVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final TAG_APPCODE:I = 0xe

.field public static final TAG_CLIENTID:I = 0x3

.field public static final TAG_EXTRADATA:I = 0xd

.field public static final TAG_LASTTIME:I = 0xa

.field public static final TAG_MANUFACTURER:I = 0x5

.field public static final TAG_MOBILEBRAND:I = 0x7

.field public static final TAG_MOBILEMODEL:I = 0x4

.field public static final TAG_NETTYPE:I = 0x8

.field public static final TAG_OSVERSION:I = 0xc

.field public static final TAG_PLATFORM:I = 0xb

.field public static final TAG_PRODUCTID:I = 0x1

.field public static final TAG_PRODUCTVERSION:I = 0x2

.field public static final TAG_ROMVERSION:I = 0x6

.field public static final TAG_UTDID:I = 0x9


# instance fields
.field public appCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extraData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public lastTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileBrand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileModel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public platform:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public romVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->DEFAULT_EXTRADATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;

    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 89
    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    .line 103
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 162
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;

    .line 163
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 110
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    .line 152
    goto :goto_0

    .line 148
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    .line 149
    goto :goto_0

    .line 145
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    .line 146
    goto :goto_0

    .line 142
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    .line 143
    goto :goto_0

    .line 139
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    .line 140
    goto :goto_0

    .line 136
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    .line 137
    goto :goto_0

    .line 133
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    .line 134
    goto :goto_0

    .line 130
    :pswitch_7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    .line 131
    goto :goto_0

    .line 127
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    .line 128
    goto :goto_0

    .line 124
    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    .line 125
    goto :goto_0

    .line 121
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    .line 122
    goto :goto_0

    .line 118
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    .line 119
    goto :goto_0

    .line 115
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    .line 116
    goto :goto_0

    .line 112
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    .line 113
    nop

    .line 155
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public hashCode()I
    .locals 4

    .line 181
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->hashCode:I

    .line 182
    .local v0, "result":I
    if-nez v0, :cond_e

    .line 183
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 184
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->productVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    .line 185
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->clientId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 186
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileModel:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v1, v3

    .line 187
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->manufacturer:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 188
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->romVersion:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v1, v3

    .line 189
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->mobileBrand:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 190
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->netType:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v1, v3

    .line 191
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->utdid:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    .line 192
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->lastTime:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v1, v3

    .line 193
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->platform:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v0, v3

    .line 194
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v1, v3

    .line 195
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->extraData:Ljava/util/List;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x1

    :goto_c
    add-int/2addr v0, v3

    .line 196
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->appCode:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_d
    add-int v0, v1, v2

    .line 197
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoReqPB;->hashCode:I

    .line 199
    :cond_e
    return v0
.end method
