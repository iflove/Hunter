.class public final Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
.super Lcom/squareup/wire/Message;
.source "MiniAppKeepQueryResultPB.java"


# static fields
.field public static final DEFAULT_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_HASKEEP:Ljava/lang/Boolean;

.field public static final DEFAULT_KEEPMINIAPPINFORESULTLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepInfoPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_CODE:I = 0x64

.field public static final TAG_HASKEEP:I = 0x5

.field public static final TAG_KEEPMINIAPPINFORESULTLIST:I = 0x4

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RESULTMSG:I = 0x3

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x64
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public hasKeep:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public keepMiniAppInfoResultList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepInfoPB;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->DEFAULT_CODE:Ljava/lang/Integer;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->DEFAULT_KEEPMINIAPPINFORESULTLIST:Ljava/util/List;

    .line 29
    sput-object v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->DEFAULT_HASKEEP:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;

    .line 50
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 51
    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    .line 53
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    .line 56
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    .line 58
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 92
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;

    .line 93
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    .line 96
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    .line 97
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 93
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    .line 76
    goto :goto_0

    .line 81
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    goto :goto_0

    .line 78
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    .line 79
    goto :goto_0

    .line 72
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 73
    goto :goto_0

    .line 69
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 66
    :cond_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    .line 67
    nop

    .line 85
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 103
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 104
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 107
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->resultMsg:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 108
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->code:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 109
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->keepMiniAppInfoResultList:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    :goto_4
    add-int/2addr v0, v3

    .line 110
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hasKeep:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_5
    add-int v2, v0, v1

    .line 111
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppKeepQueryResultPB;->hashCode:I

    .line 113
    :cond_6
    return v2
.end method
