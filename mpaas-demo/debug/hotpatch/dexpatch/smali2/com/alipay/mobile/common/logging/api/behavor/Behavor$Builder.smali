.class public Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
.super Ljava/lang/Object;
.source "Behavor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userCaseID"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 25
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object p0
.end method

.method public autoEvent()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 177
    return-void
.end method

.method public autoOpenPage()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 173
    return-void
.end method

.method public build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    return-object v0
.end method

.method public click()V
    .locals 2

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 153
    return-void
.end method

.method public longClick()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->longClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 161
    return-void
.end method

.method public openPage()V
    .locals 2

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 157
    return-void
.end method

.method public setAbTestInfo(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "abTestInfo"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public setAppID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "appID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 31
    return-object p0
.end method

.method public setBehaviourPro(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 49
    return-object p0
.end method

.method public setEntityContentId(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "entityContentId"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setEntityContentId(Ljava/lang/String;)V

    .line 124
    return-object p0
.end method

.method public setExtParam(Ljava/util/Map;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setExtParam(Ljava/util/Map;)V

    .line 99
    return-object p0
.end method

.method public setLoggerLevel(I)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "level"    # I

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 114
    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageId(Ljava/lang/String;)V

    .line 104
    return-object p0
.end method

.method public setPageStayTime(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "pageStayTime"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageStayTime(Ljava/lang/String;)V

    .line 119
    return-object p0
.end method

.method public setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "param1"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 79
    return-object p0
.end method

.method public setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "param2"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "param3"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 89
    return-object p0
.end method

.method public setRefViewID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "sourceViewID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 43
    return-object p0
.end method

.method public setRefer(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "refer"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefer(Ljava/lang/String;)V

    .line 129
    return-object p0
.end method

.method public setRenderBizType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRenderBizType(Ljava/lang/String;)V

    .line 54
    return-object p0
.end method

.method public setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 59
    return-object p0
.end method

.method public setSpmStatus(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "spmStatus"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSpmStatus(Ljava/lang/String;)V

    .line 109
    return-object p0
.end method

.method public setTrackDesc(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 74
    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 64
    return-object p0
.end method

.method public setTrackToken(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "seedID"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 69
    return-object p0
.end method

.method public setViewID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "viewID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 37
    return-object p0
.end method

.method public setVituralUserId(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "vituralUserId"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setVituralUserId(Ljava/lang/String;)V

    .line 144
    return-object p0
.end method

.method public setXpath(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .param p1, "xpath"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setxPath(Ljava/lang/String;)V

    .line 139
    return-object p0
.end method

.method public slide()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->slide(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 169
    return-void
.end method

.method public submit()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->a:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->submit(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 165
    return-void
.end method
