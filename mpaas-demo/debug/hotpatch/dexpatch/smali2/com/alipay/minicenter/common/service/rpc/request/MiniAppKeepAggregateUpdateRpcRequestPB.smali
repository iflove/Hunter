.class public final Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;
.super Lcom/squareup/wire/Message;
.source "MiniAppKeepAggregateUpdateRpcRequestPB.java"


# static fields
.field public static final DEFAULT_UPDATELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_UPDATELIST:I = 0x1


# instance fields
.field public updateList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepUpdatePB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->DEFAULT_UPDATELIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;

    .line 22
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 23
    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 42
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;

    iget-object v1, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    .line 37
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 49
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->hashCode:I

    const/4 v1, 0x0

    .line 50
    .local v1, "result":I
    move v1, v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->updateList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppKeepAggregateUpdateRpcRequestPB;->hashCode:I

    return v0
.end method
