.class public Lcom/alipay/mobile/common/logging/api/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected bundle:Landroid/os/Bundle;

.field protected category:Ljava/lang/String;

.field hasSetMessage:Z

.field protected iRender:Lcom/alipay/mobile/common/logging/api/IRender;

.field protected level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field protected message:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected timeStamp:J

.field protected uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->hasSetMessage:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .param p4, "msg"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->hasSetMessage:Z

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 56
    iput-object p4, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V
    .locals 2
    .param p1, "logCategory"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "iRender"    # Lcom/alipay/mobile/common/logging/api/IRender;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->hasSetMessage:Z

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 64
    iput-object p4, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->iRender:Lcom/alipay/mobile/common/logging/api/IRender;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 67
    return-void
.end method

.method private a()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->iRender:Lcom/alipay/mobile/common/logging/api/IRender;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->hasSetMessage:Z

    if-nez v1, :cond_0

    .line 76
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/IRender;->doRender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LogEvent"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->a()V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    return-wide v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->uploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isIllegal()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->bundle:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->category:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLevel(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)V
    .locals 0
    .param p1, "level"    # Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->level:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 97
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->hasSetMessage:Z

    .line 123
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->tag:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 112
    iput-wide p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->timeStamp:J

    .line 113
    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadUrl"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->uploadUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/api/LogEvent;->a()V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent;->message:Ljava/lang/String;

    return-object v0
.end method
