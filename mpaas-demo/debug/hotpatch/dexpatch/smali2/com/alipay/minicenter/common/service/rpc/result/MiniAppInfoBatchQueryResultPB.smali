.class public final Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;
.super Lcom/squareup/wire/Message;
.source "MiniAppInfoBatchQueryResultPB.java"


# static fields
.field public static final DEFAULT_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_MINIAPPINFOLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_CODE:I = 0x64

.field public static final TAG_MINIAPPINFOLIST:I = 0x4

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

.field public miniAppInfoList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoPB;",
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

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->DEFAULT_CODE:Ljava/lang/Integer;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->DEFAULT_MINIAPPINFOLIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;

    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 46
    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    .line 48
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    .line 51
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;

    .line 84
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    .line 88
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 84
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    goto :goto_0

    .line 66
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    .line 67
    goto :goto_0

    .line 63
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    .line 64
    goto :goto_0

    .line 60
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    .line 61
    nop

    .line 76
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 93
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 94
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 97
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->resultMsg:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 98
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->code:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->miniAppInfoList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    add-int v2, v0, v1

    .line 100
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppInfoBatchQueryResultPB;->hashCode:I

    .line 102
    :cond_5
    return v2
.end method
