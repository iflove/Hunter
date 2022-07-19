.class public final Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;
.super Lcom/squareup/wire/Message;
.source "SwitchInfoReqPb.java"


# static fields
.field public static final DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

.field public static final DEFAULT_BUSINESS:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNELID:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTID:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_LASTRESPONSETIME:Ljava/lang/String; = ""

.field public static final DEFAULT_MANUFACTURER:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILEBRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILEMODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_OSVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCTID:Ljava/lang/String; = ""

.field public static final DEFAULT_RELEASEVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_REQUESTIP:Ljava/lang/String; = ""

.field public static final DEFAULT_ROMVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEMTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final TAG_BIZTYPE:I = 0xb

.field public static final TAG_BUSINESS:I = 0x7

.field public static final TAG_CHANNELID:I = 0x4

.field public static final TAG_CLIENTID:I = 0xd

.field public static final TAG_CLIENTVERSION:I = 0x1

.field public static final TAG_IMEI:I = 0x5

.field public static final TAG_LASTRESPONSETIME:I = 0x6

.field public static final TAG_MANUFACTURER:I = 0x11

.field public static final TAG_MOBILEBRAND:I = 0xe

.field public static final TAG_MOBILEMODEL:I = 0xf

.field public static final TAG_OSVERSION:I = 0x10

.field public static final TAG_PRODUCTID:I = 0xa

.field public static final TAG_RELEASEVERSION:I = 0xc

.field public static final TAG_REQUESTIP:I = 0x9

.field public static final TAG_ROMVERSION:I = 0x12

.field public static final TAG_SYSTEMTYPE:I = 0x8

.field public static final TAG_USERID:I = 0x3

.field public static final TAG_UTDID:I = 0x2


# instance fields
.field public bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public business:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public channelId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lastResponseTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileBrand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobileModel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public productId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public releaseVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public requestIp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public romVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public systemType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->DEFAULT_BIZTYPE:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;

    .line 106
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 107
    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    .line 119
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 195
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 196
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;

    .line 197
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 132
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 185
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    .line 186
    goto/16 :goto_0

    .line 182
    :pswitch_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    .line 183
    goto/16 :goto_0

    .line 179
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    .line 180
    goto :goto_0

    .line 176
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    .line 177
    goto :goto_0

    .line 173
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    .line 174
    goto :goto_0

    .line 170
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    .line 171
    goto :goto_0

    .line 167
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    .line 168
    goto :goto_0

    .line 164
    :pswitch_7
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    .line 165
    goto :goto_0

    .line 161
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    .line 162
    goto :goto_0

    .line 158
    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    .line 159
    goto :goto_0

    .line 155
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    .line 156
    goto :goto_0

    .line 152
    :pswitch_b
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    .line 153
    goto :goto_0

    .line 149
    :pswitch_c
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    .line 150
    goto :goto_0

    .line 146
    :pswitch_d
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    .line 147
    goto :goto_0

    .line 143
    :pswitch_e
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    .line 144
    goto :goto_0

    .line 140
    :pswitch_f
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    .line 141
    goto :goto_0

    .line 137
    :pswitch_10
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    .line 138
    goto :goto_0

    .line 134
    :pswitch_11
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    .line 135
    nop

    .line 189
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    .line 219
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->hashCode:I

    .line 220
    .local v0, "result":I
    if-nez v0, :cond_12

    .line 221
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientVersion:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 222
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->utdid:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    .line 223
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->userId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 224
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->channelId:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v1, v3

    .line 225
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->imei:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 226
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->lastResponseTime:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v1, v3

    .line 227
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->business:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 228
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->systemType:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v1, v3

    .line 229
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->requestIp:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v0, v3

    .line 230
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->productId:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    add-int/2addr v1, v3

    .line 231
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchBizType;->hashCode()I

    move-result v3

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    add-int/2addr v0, v3

    .line 232
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->releaseVersion:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_b
    add-int/2addr v1, v3

    .line 233
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->clientId:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    add-int/2addr v0, v3

    .line 234
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileBrand:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :goto_d
    add-int/2addr v1, v3

    .line 235
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->mobileModel:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_e

    :cond_e
    const/4 v3, 0x0

    :goto_e
    add-int/2addr v0, v3

    .line 236
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->osVersion:Ljava/lang/String;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v1, v3

    .line 237
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->manufacturer:Ljava/lang/String;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    add-int/2addr v0, v3

    .line 238
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->romVersion:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_11
    add-int v0, v1, v2

    .line 239
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/clientswitch/model/pb/SwitchInfoReqPb;->hashCode:I

    .line 241
    :cond_12
    return v0
.end method
