.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;
.super Ljava/lang/Object;
.source "TinyAppPageFluencyMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

.field private g:J

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "TinyAppPageFluencyMonitor"

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->h:Landroid/content/Context;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->g:J

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    move-object v2, v0

    .line 99
    .local v2, "info":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;B)V

    .line 101
    move-object v2, v1

    iput-object p1, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->a:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    return-object v2

    .line 105
    .end local v2    # "info":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    :catchall_0
    move-exception v1

    .line 106
    .local v1, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a:Ljava/lang/String;

    const-string v4, "getPageFluencyInfo error!"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2
    .param p1, "cost"    # J

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->e:J

    .line 37
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    iget-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->d:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    iget-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->c:J

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->e:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->c:J

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->b(Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    .line 85
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->b:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a:Ljava/lang/String;

    const-string/jumbo v3, "onPageMayChanged error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appType"    # Ljava/lang/String;

    const-string v0, "##"

    .line 41
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->g:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 45
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48
    iget-wide v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->d:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    .line 49
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    iget-wide v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->c:J

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->e:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->c:J

    .line 50
    iput-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 53
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 54
    .local v1, "keySet":Ljava/util/Set;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v3, "reportData":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;

    .line 57
    .local v2, "info":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    move-object v2, v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    .line 59
    iget-wide v6, v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->c:J

    iget-wide v8, v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->b:J

    invoke-static {v6, v7, v8, v9}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a(JJ)D

    move-result-wide v6

    .line 60
    .local v6, "score":D
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 61
    const-string/jumbo v8, "|"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-long v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .end local v2    # "info":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor$a;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "score":D
    :cond_4
    goto :goto_0

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v2, v4

    .line 68
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "APM_TINYAPP_PAGE_SMOOTHNESS"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    .end local v1    # "keySet":Ljava/util/Set;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "reportData":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return-void

    .line 42
    :cond_7
    :goto_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a:Ljava/lang/String;

    const-string v3, "finalProcess error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method
