.class public final Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;
.super Lcom/squareup/wire/Message;
.source "MiniAppKeepUpdatePB.java"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = ""

.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZTYPE:Ljava/lang/String; = ""

.field public static final TAG_ACTION:I = 0x2

.field public static final TAG_APPID:I = 0x1

.field public static final TAG_BIZTYPE:I = 0x3

.field public static final TAG_EXTRAINFO:I = 0x4


# instance fields
.field public action:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;

    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 36
    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    .line 41
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 69
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;

    .line 70
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    .line 73
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 70
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    goto :goto_0

    .line 55
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    .line 56
    goto :goto_0

    .line 52
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    .line 53
    goto :goto_0

    .line 49
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    .line 50
    nop

    .line 62
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 78
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 79
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->action:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->bizType:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 83
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->extraInfo:Lcom/alipay/minicenter/common/service/rpc/MapStringString;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/alipay/minicenter/common/service/rpc/MapStringString;->hashCode()I

    move-result v1

    :cond_3
    add-int v2, v0, v1

    .line 84
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;->hashCode:I

    .line 86
    :cond_4
    return v2
.end method
