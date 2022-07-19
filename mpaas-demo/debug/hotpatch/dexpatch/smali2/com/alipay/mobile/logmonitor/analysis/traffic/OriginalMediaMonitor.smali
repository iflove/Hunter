.class public Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;
.super Ljava/lang/Object;
.source "OriginalMediaMonitor.java"


# static fields
.field private static final a:J

.field private static b:Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->c:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    .line 66
    const-string v1, "api.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string/jumbo v1, "up.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string v1, "dl.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string/jumbo v1, "up-mayi.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string v1, "api-mayi.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string/jumbo v1, "oalipay-dl-django.alicdn.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string v1, "alipay-dl.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string v1, "alipay.up.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    const-string v1, "alipay.dl.django.t.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->e:J

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->f:Z

    .line 78
    return-void
.end method

.method public static a()Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;
    .locals 2

    .line 56
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b:Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    if-eqz v0, :cond_0

    .line 59
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b:Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b:Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;

    .line 52
    :cond_0
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b:Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 48
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;)V
    .locals 3
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;
    .param p1, "reason"    # Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "markOriginalMedia by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OriginalMediaMonitor"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "original_media"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 179
    const-string/jumbo v0, "original_reason"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 180
    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 3
    .param p0, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->extParams:Ljava/util/Map;

    const-string/jumbo v1, "thumb"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "thumbValue":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    const-string/jumbo v2, "nbnet_media"

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 120
    const-string/jumbo v1, "thumb_false"

    invoke-static {p0, v1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;)V

    .line 122
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 7

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 184
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->e:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 186
    sget-wide v4, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 187
    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->e:J

    .line 189
    const-string v0, "OriginalMediaMonitor_CloseFeature"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "closeFeatureTag":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->f:Z

    .line 192
    .end local v0    # "closeFeatureTag":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->f:Z

    return v0
.end method

.method private c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 5
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 127
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    return-void

    .line 132
    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v1, "contentType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    return-void

    .line 138
    :cond_1
    const-string v0, "image/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    return-void

    .line 143
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->d:Ljava/util/Set;

    iget-object v2, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->host:Ljava/lang/String;

    .line 144
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 147
    :goto_1
    const-string v2, "django_media"

    if-nez v0, :cond_5

    .line 148
    const-string v0, "false"

    invoke-virtual {p1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 149
    const-string/jumbo v0, "not_django"

    invoke-static {p1, v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;)V

    .line 150
    return-void

    .line 154
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    const-string v3, "&zoom="

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v3, "true"

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 155
    const-string v4, "&amp;zoom="

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 158
    const-string/jumbo v0, "no_zoom"

    invoke-static {p1, v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;)V

    .line 159
    return-void

    .line 163
    :cond_6
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    const-string v4, "&zoom=original"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->url:Ljava/lang/String;

    .line 164
    const-string v4, "&amp;zoom=original"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 172
    :cond_7
    return-void

    .line 166
    :cond_8
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 167
    const-string/jumbo v0, "zoom_orgin"

    invoke-static {p1, v0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    .locals 4
    .param p1, "dataflowModel"    # Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;

    .line 83
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_H5:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DJANGO:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_DOWNLOAD:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v0, v1, :cond_3

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    return-void

    .line 93
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;->type:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->HTTPCLIENT_NBNET:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    if-ne v0, v1, :cond_2

    .line 94
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->b(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V

    return-void

    .line 96
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/logmonitor/analysis/traffic/OriginalMediaMonitor;->c(Lcom/alipay/mobile/common/logging/api/monitor/DataflowModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "OriginalMediaMonitor"

    const-string/jumbo v3, "noteTraficConsume"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method
