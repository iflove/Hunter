.class public Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;
.super Ljava/lang/Object;
.source "TraceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$TaskDiagnosisResultCallback;,
        Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    }
.end annotation


# static fields
.field public static LINK_TYPE_CLOD_START_NOT_FIRST:I

.field public static LINK_TYPE_FIRST_LOGIN_HOMEPAGE:I

.field public static LINK_TYPE_LOGOUT_HOMEPAGE:I

.field public static LINK_TYPE_OVERLAY_INSTALL_HOMEPAGE:I

.field private static c:Z

.field private static e:Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Z


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private d:Landroid/content/SharedPreferences;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->LINK_TYPE_FIRST_LOGIN_HOMEPAGE:I

    .line 35
    const/4 v1, 0x2

    sput v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->LINK_TYPE_LOGOUT_HOMEPAGE:I

    .line 36
    const/4 v1, 0x3

    sput v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->LINK_TYPE_OVERLAY_INSTALL_HOMEPAGE:I

    .line 37
    const/4 v1, 0x4

    sput v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->LINK_TYPE_CLOD_START_NOT_FIRST:I

    .line 41
    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->e:Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    .line 43
    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->b:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    .line 47
    new-instance v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$TaskDiagnosisResultCallback;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$TaskDiagnosisResultCallback;-><init>(Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$1;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->k:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 13

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 222
    return-object v1

    .line 225
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 229
    .local v3, "pKey":Ljava/lang/String;
    const-wide/16 v4, 0x0

    move-object v6, v1

    .line 231
    .local v4, "pTime":J
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 233
    .local v6, "entry":Ljava/util/Map$Entry;
    move-object v6, v7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 234
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 235
    .local v8, "time":J
    if-nez v3, :cond_1

    .line 236
    move-object v3, v7

    .line 237
    move-wide v4, v8

    goto :goto_0

    .line 239
    :cond_1
    sub-long v10, v8, v4

    .line 240
    .local v10, "cost":J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v12, "#"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    move-object v3, v7

    .line 242
    move-wide v4, v8

    .line 244
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "time":J
    .end local v10    # "cost":J
    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 246
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "pKey":Ljava/lang/String;
    .end local v4    # "pTime":J
    :catchall_0
    move-exception v0

    .line 249
    return-object v1
.end method

.method private a(I)Z
    .locals 7
    .param p1, "linkType"    # I

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getDefaultSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TraceMonitorLinkType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 258
    .local v1, "content":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 259
    return v3

    .line 261
    :cond_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v2, "types":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    move v4, v3

    .line 263
    .local v4, "len":I
    move v4, v0

    if-gtz v0, :cond_1

    .line 264
    return v3

    .line 266
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    const/4 v3, 0x1

    return v3

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_3
    return v3
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->updateDumpTask()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;
    .locals 1

    .line 50
    sget-object v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->e:Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->addMainSplit(Ljava/lang/String;)V

    .line 360
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 365
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v0

    const-string v1, "222"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->addMainSplit(Ljava/lang/String;)V

    .line 367
    const-wide/16 v0, 0x457

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 370
    goto :goto_1

    .line 368
    :catchall_1
    move-exception v0

    .line 372
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v0

    const-string v1, "333"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->addMainSplit(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->end()V

    .line 376
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getMonitor()Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->LINK_TYPE_FIRST_LOGIN_HOMEPAGE:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->commit(I)V

    .line 379
    return-void
.end method


# virtual methods
.method public addMainSplit(Ljava/lang/String;)V
    .locals 6
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    return-void

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    return-void

    .line 72
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 75
    sget-boolean v4, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->g:Z

    if-nez v4, :cond_4

    .line 76
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;

    move-object v4, v3

    .line 77
    .local v4, "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    iget-boolean v2, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    if-eqz v2, :cond_4

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V

    .line 81
    .end local v4    # "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    :cond_4
    iput-object v3, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    .line 84
    :cond_5
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;

    .line 86
    .local v2, "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    sget-boolean v4, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->g:Z

    if-eqz v4, :cond_8

    .line 87
    iget-boolean v4, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    if-eqz v4, :cond_6

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->start(Ljava/lang/String;)V

    .line 90
    :cond_6
    iget-boolean v4, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->subThreadTask:Z

    if-eqz v4, :cond_7

    .line 91
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getTaskDiagnosis()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    move-result-object v4

    .line 92
    .local v3, "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    move-object v3, v4

    if-eqz v4, :cond_7

    .line 93
    invoke-interface {v3, p1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;->start(Ljava/lang/String;)V

    .line 96
    .end local v3    # "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    :cond_7
    sput-object p1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    .line 97
    const/4 v3, 0x0

    sput-boolean v3, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->g:Z

    goto :goto_0

    .line 99
    :cond_8
    iget-boolean v3, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    if-eqz v3, :cond_9

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->startSubSection(Ljava/lang/String;)V

    .line 103
    :cond_9
    :goto_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    .line 105
    .end local v2    # "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    :cond_a
    return-void
.end method

.method public commit(I)V
    .locals 17
    .param p1, "linkType"    # I

    .line 151
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "trace":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getAllResults()Ljava/util/Map;

    move-result-object v3

    .line 157
    .local v3, "allResults":Ljava/util/Map;
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->shutdown()V

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "TraceMonitor"

    if-eqz v4, :cond_1

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "trace is null"

    invoke-interface {v1, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_1
    sget-object v4, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getTaskDiagnosis()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    move-result-object v4

    sget-object v6, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->k:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    invoke-interface {v4, v6, v7}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;->end(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V

    .line 165
    :cond_2
    const/4 v4, 0x0

    .line 166
    .local v4, "taskResult":Ljava/lang/String;
    const/4 v6, 0x0

    .line 167
    .local v6, "taskTimeDistribute":Ljava/lang/String;
    const-string v7, "MainTaskTimeDistribution"

    if-eqz v3, :cond_3

    .line 168
    const-string v8, "MainTaskResult"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    .line 169
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    check-cast v6, Ljava/lang/String;

    .line 171
    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v8, "extParam":Ljava/util/Map;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 173
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getFirstClickDelay()[J

    move-result-object v7

    const/4 v9, 0x0

    move-object v10, v9

    .line 176
    .local v10, "firstClickDelay":[J
    move-object v10, v7

    const-string/jumbo v11, "|"

    const/4 v12, 0x0

    if-eqz v7, :cond_5

    array-length v7, v10

    const/4 v13, 0x2

    if-ne v7, v13, :cond_5

    aget-wide v13, v10, v12

    const-wide/16 v15, -0x1

    cmp-long v7, v13, v15

    if-eqz v7, :cond_5

    aget-wide v13, v10, v1

    cmp-long v7, v13, v15

    if-eqz v7, :cond_5

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v13, v10, v12

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v10, v1

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "FirstClickDelay"

    invoke-interface {v8, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5
    iget-object v7, v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->k:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    invoke-interface {v7}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;->getResult()Ljava/util/Map;

    move-result-object v7

    move-object v13, v9

    .line 181
    .local v13, "diagnosisResult":Ljava/util/Map;
    move-object v13, v7

    if-eqz v7, :cond_a

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v7, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v9

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 184
    .local v15, "aResult":Ljava/util/Map$Entry;
    move-object/from16 v15, v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 185
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    .line 186
    .local v12, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 187
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v15    # "aResult":Ljava/util/Map$Entry;
    :cond_6
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_0

    .line 190
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v14

    .line 191
    .local v9, "result":Ljava/lang/String;
    move-object v9, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 192
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 195
    :cond_8
    const-string/jumbo v1, "taskDiagnosis"

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_9
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getTaskDiagnosis()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    move-result-object v1

    move-object v11, v15

    .line 198
    .local v11, "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    move-object v11, v1

    if-eqz v1, :cond_b

    .line 199
    invoke-interface {v11}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;->getJiffyToMillisScale()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v12, "jiffyToMillis"

    invoke-interface {v8, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "linkType~"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v11, p1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " dumpAllTrace~"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " taskResult~"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " taskTimeDistribute~"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " firstClickDelay~"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v10}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-interface {v1, v5, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 205
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v5, v7

    .line 206
    .local v5, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v5, v1

    const-string v7, "Push"

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 207
    const-string v1, "MainTraceMonitor"

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 209
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 210
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 212
    :cond_c
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 213
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 214
    invoke-virtual {v5, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setExtParam(Ljava/util/Map;)V

    .line 216
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 218
    .end local v5    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_e
    return-void
.end method

.method public end()V
    .locals 1

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->end(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public end(Ljava/lang/String;)V
    .locals 8
    .param p1, "splitLabel"    # Ljava/lang/String;

    .line 108
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    if-eqz v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 112
    .local v0, "end":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "p_end_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->b:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->b:I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 120
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;

    move-object v5, v4

    .line 121
    .local v5, "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    iget-boolean v2, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    if-eqz v2, :cond_2

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v2

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->endSubSection(Ljava/lang/String;)V

    .line 124
    :cond_2
    iput-object v4, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->j:Ljava/lang/String;

    goto :goto_1

    .line 119
    .end local v5    # "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    :cond_3
    move-object v5, v4

    .line 126
    :goto_1
    sget-object v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    sget-object v6, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;

    .line 128
    .restart local v5    # "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    move-object v5, v2

    iget-boolean v2, v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->mainThreadTask:Z

    if-eqz v2, :cond_4

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->getInstance()Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;

    move-result-object v2

    sget-object v6, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/logging/util/monitor/diagnose/MainTaskWatcher;->stop(Ljava/lang/String;)V

    .line 131
    :cond_4
    iget-boolean v2, v5, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;->subThreadTask:Z

    if-eqz v2, :cond_5

    .line 132
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getInstance()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingHolder;->getTaskDiagnosis()Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;

    move-result-object v2

    move-object v6, v4

    .line 133
    .local v6, "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    move-object v6, v2

    if-eqz v2, :cond_5

    .line 134
    sget-object v2, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->k:Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;

    invoke-interface {v6, v2, v7}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;->end(Ljava/lang/String;Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosisCallback;)V

    .line 137
    .end local v6    # "taskDiagnosis":Lcom/alipay/tianyan/mobilesdk/TianyanLoggingDelegator$ITaskDiagnosis;
    :cond_5
    sput-boolean v3, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->g:Z

    .line 138
    sput-object v4, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->h:Ljava/lang/String;

    .line 140
    .end local v5    # "dumpTask":Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;
    :cond_6
    return-void
.end method

.method public getDefaultSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 308
    nop

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->d:Landroid/content/SharedPreferences;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public isLaunchFinish()Z
    .locals 1

    .line 319
    sget-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->i:Z

    return v0
.end method

.method public recordLaunchFinish()V
    .locals 1

    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->i:Z

    .line 316
    return-void
.end method

.method public stop()V
    .locals 1

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->c:Z

    .line 148
    return-void
.end method

.method public updateDumpTask()V
    .locals 11

    .line 285
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->getDefaultSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ExpTraceDiagnosePeriod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 286
    .local v1, "exp_trace_period":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    .line 292
    :cond_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 293
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 294
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v2, "split":[Ljava/lang/String;
    move-object v2, v6

    aget-object v6, v6, v4

    .line 296
    .local v6, "section":Ljava/lang/String;
    const/4 v7, 0x0

    .line 297
    .local v7, "traceMainThreadTask":Z
    const/4 v8, 0x0

    .line 298
    .local v8, "traceSubThreadTask":Z
    array-length v9, v2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 299
    const/4 v9, 0x1

    aget-object v9, v2, v9

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 300
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 302
    :cond_2
    iget-object v9, p0, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor;->f:Ljava/util/Map;

    new-instance v10, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;

    invoke-direct {v10, v7, v8}, Lcom/alipay/mobile/common/logging/util/monitor/TraceMonitor$DumpTask;-><init>(ZZ)V

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v2    # "split":[Ljava/lang/String;
    .end local v6    # "section":Ljava/lang/String;
    .end local v7    # "traceMainThreadTask":Z
    .end local v8    # "traceSubThreadTask":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    :cond_3
    return-void
.end method
