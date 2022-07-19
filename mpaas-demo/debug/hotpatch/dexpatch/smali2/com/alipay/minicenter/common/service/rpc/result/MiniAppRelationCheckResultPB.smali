.class public final Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
.super Lcom/squareup/wire/Message;
.source "MiniAppRelationCheckResultPB.java"


# static fields
.field public static final DEFAULT_JUMPABLE:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_JUMPABLE:I = 0x4

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RESULTMSG:I = 0x3

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public jumpable:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
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
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 21
    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->DEFAULT_JUMPABLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;

    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 37
    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    .line 39
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 70
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;

    .line 71
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    .line 74
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 71
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    .line 57
    goto :goto_0

    .line 53
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    .line 54
    goto :goto_0

    .line 50
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    .line 51
    nop

    .line 63
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 79
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 80
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 83
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->resultMsg:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 84
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->jumpable:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_3
    add-int v2, v0, v1

    .line 85
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppRelationCheckResultPB;->hashCode:I

    .line 87
    :cond_4
    return v2
.end method
