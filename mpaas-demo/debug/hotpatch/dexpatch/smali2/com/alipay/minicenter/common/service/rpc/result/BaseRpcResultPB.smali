.class public final Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
.super Lcom/squareup/wire/Message;
.source "BaseRpcResultPB.java"


# static fields
.field public static final DEFAULT_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_CODE:I = 0x64

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

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->DEFAULT_CODE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;

    .line 37
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 38
    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    .line 40
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    .line 43
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;

    .line 72
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    .line 75
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 72
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    goto :goto_0

    .line 57
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    .line 58
    goto :goto_0

    .line 54
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    .line 55
    goto :goto_0

    .line 51
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    .line 52
    nop

    .line 64
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 80
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 81
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 84
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->resultMsg:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 85
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->code:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_3
    add-int v2, v0, v1

    .line 86
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/result/BaseRpcResultPB;->hashCode:I

    .line 88
    :cond_4
    return v2
.end method
