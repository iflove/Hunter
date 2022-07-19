.class public final Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
.super Lcom/squareup/wire/Message;
.source "UnionResourceResult.java"


# static fields
.field public static final DEFAULT_INFO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_INFO:I = 0x3

.field public static final TAG_LIMIT:I = 0x4

.field public static final TAG_MESSAGE:I = 0x2

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
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

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->DEFAULT_INFO:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    .line 53
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 54
    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    .line 56
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    .line 58
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    .line 59
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 87
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    .line 88
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    .line 90
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    .line 91
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 88
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    goto :goto_0

    .line 73
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    .line 74
    goto :goto_0

    .line 70
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    .line 71
    goto :goto_0

    .line 67
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    .line 68
    nop

    .line 80
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 96
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 97
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 100
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    add-int/2addr v0, v3

    .line 101
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;->hashCode()I

    move-result v1

    :cond_3
    add-int v2, v0, v1

    .line 102
    iput v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->hashCode:I

    .line 104
    :cond_4
    return v2
.end method
