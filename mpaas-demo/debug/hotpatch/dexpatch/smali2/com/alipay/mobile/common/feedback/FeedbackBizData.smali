.class public Lcom/alipay/mobile/common/feedback/FeedbackBizData;
.super Ljava/lang/Object;
.source "FeedbackBizData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public getBizCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBizMsg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    return-object v0
.end method

.method public removeExtParam(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizCode"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setBizMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizMsg"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/common/feedback/FeedbackBizData;->b:Ljava/lang/String;

    .line 29
    return-void
.end method
