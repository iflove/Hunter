.class public Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;
.super Ljava/lang/Object;
.source "BehavorloggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private b:Lcom/alipay/mobile/common/logging/render/BehavorRender;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 33
    new-instance v0, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "bizType"    # Ljava/lang/String;

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public autoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 133
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const/4 v2, 0x1

    .line 135
    const-string v3, "auto_click"

    invoke-static {v1, v3, p1, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    const-string v2, "autouserbehavor"

    const-string v3, "BehavorLogger"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 130
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;->onAutoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 139
    :cond_1
    return-void
.end method

.method public autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 158
    const-string v2, "auto_event"

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    const-string v2, "autouserbehavor"

    const-string v3, "BehavorLogger"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 153
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 162
    return-void
.end method

.method public autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 116
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const/4 v2, 0x1

    .line 118
    const-string v3, "auto_openPage"

    invoke-static {v1, v3, p1, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    const-string v2, "autouserbehavor"

    const-string v3, "BehavorLogger"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 113
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getBehavorLogListener()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogListener;->onAutoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 122
    :cond_1
    return-void
.end method

.method public click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 9
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    .line 47
    .local v0, "bizType":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 64
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const/4 v2, 0x0

    .line 66
    const-string v3, "clicked"

    invoke-static {v1, v3, p1, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    const-string v3, "BehavorLogger"

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 64
    invoke-interface {v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 71
    return-void
.end method

.method public customContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bizType"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 219
    return-void
.end method

.method public event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 9
    .param p1, "behavorID"    # Ljava/lang/String;
    .param p2, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getBehaviourPro()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    .local v1, "bizType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v2

    invoke-direct {v5, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const/4 v3, 0x0

    .line 184
    invoke-static {v2, p1, p2, v3}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v7

    const-string v4, "BehavorLogger"

    move-object v2, v8

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 182
    invoke-interface {v0, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 188
    return-void
.end method

.method public longClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 94
    const-string v0, "longClicked"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 95
    return-void
.end method

.method public openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 9
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->isLogSwitchOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    .line 83
    .local v0, "bizType":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 84
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->b:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    const/4 v2, 0x0

    .line 86
    const-string/jumbo v3, "openPage"

    invoke-static {v1, v3, p1, v2}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    const-string v3, "BehavorLogger"

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 84
    invoke-interface {v7, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 90
    return-void
.end method

.method public slide(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 104
    const-string/jumbo v0, "slided"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 105
    return-void
.end method

.method public submit(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 1
    .param p1, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 99
    const-string/jumbo v0, "submited"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/impl/BehavorloggerImpl;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 100
    return-void
.end method
