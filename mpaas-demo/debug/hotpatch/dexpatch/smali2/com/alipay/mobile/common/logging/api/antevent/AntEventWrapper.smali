.class public Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;
.super Ljava/lang/Object;
.source "AntEventWrapper.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;)V
    .locals 0
    .param p1, "antEvent"    # Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    .line 8
    return-void
.end method


# virtual methods
.method public getAntEvent()Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    return-object v0
.end method

.method public setAbtestId(Ljava/lang/String;)V
    .locals 1
    .param p1, "abtestId"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setAbtestId(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setNeedAbtest(Z)V
    .locals 1
    .param p1, "needAbtest"    # Z

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setNeedAbtest(Z)V

    .line 61
    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setPageId(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 1
    .param p1, "param1"    # Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setParam1(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 1
    .param p1, "param2"    # Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setParam1(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 1
    .param p1, "param3"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setParam1(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setRenderBizType(Ljava/lang/String;)V
    .locals 1
    .param p1, "renderBizType"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/antevent/AntEventWrapper;->a:Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/antevent/AntEvent;->setRenderBizType(Ljava/lang/String;)V

    .line 54
    return-void
.end method
