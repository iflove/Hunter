.class public final Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
.super Lcom/squareup/wire/Message;
.source "WalletAuthSkipRequestPB.java"


# static fields
.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_CURRENTPAGEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_FROMSYSTEM:Ljava/lang/String; = ""

.field public static final DEFAULT_ISVAPPID:Ljava/lang/String; = ""

.field public static final DEFAULT_SCOPENICKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STATE:Ljava/lang/String; = ""

.field public static final TAG_APPEXTINFO:I = 0x9

.field public static final TAG_APPID:I = 0x3

.field public static final TAG_AUTHREQUESTCONTEXT:I = 0x2

.field public static final TAG_CURRENTPAGEURL:I = 0x6

.field public static final TAG_EXTINFO:I = 0x8

.field public static final TAG_FROMSYSTEM:I = 0x1

.field public static final TAG_ISVAPPID:I = 0x7

.field public static final TAG_SCOPENICKS:I = 0x4

.field public static final TAG_STATE:I = 0x5


# instance fields
.field public appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public currentPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public fromSystem:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public isvAppId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public scopeNicks:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
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

.field public state:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->DEFAULT_SCOPENICKS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;

    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    .line 66
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    .line 68
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 72
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 73
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 116
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;

    .line 117
    .local v1, "o":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    .line 118
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    .line 120
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    .line 123
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 124
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 125
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 117
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 79
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    goto :goto_0

    .line 102
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 103
    goto :goto_0

    .line 99
    :pswitch_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    .line 100
    goto :goto_0

    .line 96
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    .line 97
    goto :goto_0

    .line 93
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    .line 94
    goto :goto_0

    .line 90
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    .line 91
    goto :goto_0

    .line 87
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    .line 88
    goto :goto_0

    .line 84
    :pswitch_7
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    .line 85
    goto :goto_0

    .line 81
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    .line 82
    nop

    .line 109
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final hashCode()I
    .locals 4

    .line 130
    iget v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 131
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->authRequestContext:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/model/AuthRequestContextPB;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 134
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 135
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    :goto_3
    add-int/2addr v0, v3

    .line 136
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    .line 137
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v0, v3

    .line 138
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v0, v3

    .line 139
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->hashCode()I

    move-result v3

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    add-int/2addr v0, v3

    .line 140
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->hashCode()I

    move-result v1

    :cond_8
    add-int v2, v0, v1

    .line 141
    iput v2, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->hashCode:I

    .line 143
    :cond_9
    return v2
.end method
