.class public final Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;
.super Lcom/squareup/wire/Message;
.source "MiniAppInfoBatchQueryRequestPB.java"


# static fields
.field public static final DEFAULT_APPIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_APPIDS:I = 0x1


# instance fields
.field public appIds:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->DEFAULT_APPIDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;

    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 24
    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 43
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;

    iget-object v1, v1, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    .line 38
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 50
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->hashCode:I

    const/4 v1, 0x0

    .line 51
    .local v1, "result":I
    move v1, v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->appIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppInfoBatchQueryRequestPB;->hashCode:I

    return v0
.end method
