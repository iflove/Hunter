.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
.super Ljava/lang/Object;
.source "MainLooperMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;
    }
.end annotation


# static fields
.field private static B:J

.field private static C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field private static e:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;


# instance fields
.field private A:J

.field private D:J

.field public a:Z

.field public c:Z

.field public d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Looper;

.field private h:Z

.field private i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:Ljava/lang/reflect/Field;

.field private w:Ljava/lang/reflect/Field;

.field private x:Ljava/lang/reflect/Method;

.field private y:Landroid/content/SharedPreferences;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b:Z

    .line 688
    const-wide/16 v0, 0x9c4

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->B:J

    .line 690
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->C:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h:Z

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 109
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J

    .line 110
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J

    .line 111
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    .line 112
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 116
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r:J

    .line 117
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->s:J

    .line 121
    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c:Z

    .line 425
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    .line 535
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->v:Ljava/lang/reflect/Field;

    .line 536
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->w:Ljava/lang/reflect/Field;

    .line 537
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->x:Ljava/lang/reflect/Method;

    .line 599
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    .line 607
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    .line 637
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    .line 699
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->D:J

    .line 143
    if-eqz p1, :cond_4

    .line 146
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g:Landroid/os/Looper;

    .line 150
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 151
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ActivityLifecycleCallback;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 153
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g()V

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$1;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const-wide/16 v0, 0x8ca

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->B:J

    .line 166
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p()V

    return-void

    .line 170
    :cond_2
    const-wide/16 v0, 0x2ee

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->B:J

    .line 172
    :cond_3
    return-void

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    .param p1, "x1"    # J

    .line 49
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->D:J

    return-wide p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 136
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->e:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 132
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->g()V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .param p1, "recording"    # Z

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    .end local p1    # "recording":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(J)Z
    .locals 3
    .param p0, "score"    # J

    .line 421
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x64

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(J)V
    .locals 11
    .param p1, "last1MinuteScore"    # J

    .line 429
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    .line 430
    :try_start_0
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-ne v1, v2, :cond_2

    .line 432
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    .local v2, "sp":Landroid/content/SharedPreferences;
    :try_start_2
    iget-boolean v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l:Z

    if-eqz v6, :cond_0

    const-string v6, "TINYAPP_SMOOTHNESS_SCORE"

    goto :goto_0

    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v6, "SMOOTHNESS_SCORE"

    :goto_0
    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 435
    invoke-static {v6, v7}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 436
    iput v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    goto :goto_2

    .line 438
    :cond_1
    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 439
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    goto :goto_2

    .line 441
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    .line 442
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 443
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    .line 447
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    .line 448
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 449
    iput v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    goto :goto_3

    .line 451
    :cond_3
    long-to-double v1, v1

    iget v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    int-to-double v5, v4

    int-to-double v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    div-double/2addr v5, v7

    mul-double v1, v1, v5

    long-to-double v5, p1

    int-to-double v7, v4

    add-double/2addr v7, v9

    div-double/2addr v9, v7

    mul-double v5, v5, v9

    add-double/2addr v1, v5

    double-to-long v1, v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 452
    add-int/2addr v4, v3

    iput v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    .line 454
    :goto_3
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    :try_start_4
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 457
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l:Z

    if-eqz v2, :cond_4

    .line 458
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TINYAPP_SMOOTHNESS_SCORE"

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 459
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TINYAPP_SMOOTHNESS_APPID"

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k:Ljava/lang/String;

    .line 460
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "APM_APP_TYPE"

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m:Ljava/lang/String;

    .line 461
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "APM_PROCESS"

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 463
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    .line 466
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "SMOOTHNESS_SCORE"

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 467
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 468
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 472
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    goto :goto_4

    .line 470
    :catch_2
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    const-string v4, "Save deviceTotalScore Failed"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "MainLooperMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device total smoothness score: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private declared-synchronized b(Z)V
    .locals 6
    .param p1, "fromStopCal"    # Z

    monitor-enter p0

    .line 381
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c:Z

    if-eqz v0, :cond_1

    .line 382
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    const-wide/16 v2, 0x384

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 383
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    goto :goto_0

    .line 385
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 388
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 389
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    iget-boolean v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(JZ)V

    .line 392
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->c:Z

    .line 394
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->j()V

    .line 396
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 397
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a(JJ)D

    move-result-wide v0

    .line 398
    .local v0, "score":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastMinute smoothness score:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    double-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b(J)V

    .line 403
    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p()V

    .line 405
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o()Z

    move-result v2

    if-nez v2, :cond_4

    .line 406
    if-nez p1, :cond_4

    .line 407
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v0    # "score":D
    :cond_4
    monitor-exit p0

    return-void

    .line 380
    .end local p1    # "fromStopCal":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->s:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->D:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    .line 49
    sget-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->B:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/util/Set;
    .locals 1

    .line 49
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->C:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 1

    .line 187
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 291
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 298
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 7

    monitor-enter p0

    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 306
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    const-wide/16 v5, 0xc8

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 307
    invoke-static {v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessUtil;->a(J)D

    move-result-wide v3

    .line 308
    .local v3, "lagTime":D
    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    long-to-double v5, v5

    add-double/2addr v5, v3

    double-to-long v5, v5

    iput-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    .line 309
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    if-eqz v0, :cond_0

    .line 310
    double-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a(J)V

    .line 313
    .end local v3    # "lagTime":D
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :cond_0
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 314
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 315
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J

    .line 317
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 319
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    .line 320
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 321
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 329
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 330
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->p:J

    .line 331
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 328
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static l()Z
    .locals 2

    .line 341
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private m()Landroid/os/Message;
    .locals 11

    .line 543
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 546
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 547
    monitor-enter v0

    .line 550
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    nop

    .line 553
    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->v:Ljava/lang/reflect/Field;

    if-nez v5, :cond_0

    .line 554
    const-class v5, Landroid/os/MessageQueue;

    const-string/jumbo v6, "mMessages"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->v:Ljava/lang/reflect/Field;

    .line 555
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 557
    :cond_0
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->v:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    goto :goto_0

    .line 558
    :catch_0
    move-exception v5

    .line 559
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "MainLooperMonitor"

    invoke-interface {v6, v7, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v1

    .line 561
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_5

    .line 565
    :cond_1
    nop

    .line 567
    const/4 v6, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->w:Ljava/lang/reflect/Field;

    if-nez v7, :cond_2

    .line 568
    const-class v7, Landroid/os/Message;

    const-string/jumbo v8, "next"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->w:Ljava/lang/reflect/Field;

    .line 569
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 571
    :cond_2
    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->w:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    :try_start_4
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->x:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 573
    const-class v5, Landroid/os/Message;

    const-string v8, "isAsynchronous"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->x:Ljava/lang/reflect/Method;

    .line 574
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 576
    :cond_3
    if-eqz v7, :cond_4

    .line 577
    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->x:Ljava/lang/reflect/Method;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 581
    :cond_4
    move-object v5, v7

    goto :goto_2

    .line 579
    :catch_1
    move-exception v5

    move-object v10, v7

    move-object v7, v5

    move-object v5, v10

    goto :goto_1

    :catch_2
    move-exception v7

    .line 580
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string v9, "MainLooperMonitor"

    invoke-interface {v8, v9, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    :goto_2
    if-eqz v5, :cond_5

    if-eqz v6, :cond_1

    .line 584
    :cond_5
    if-eqz v5, :cond_6

    .line 585
    invoke-virtual {v5}, Landroid/os/Message;->getWhen()J

    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v4, v2, v6

    if-gez v4, :cond_6

    .line 586
    goto :goto_3

    .line 589
    :cond_6
    move-object v1, v5

    :goto_3
    :try_start_6
    monitor-exit v0

    return-object v1

    .line 590
    :catchall_0
    move-exception v2

    .line 591
    monitor-exit v0

    return-object v1

    .line 593
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 544
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNextMessage called outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    .line 605
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 10

    .line 614
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 615
    .local v1, "nowTime":J
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n()V

    .line 616
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "SMOOTHNESS_KEY_LAST_DAY_TIME"

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_0

    .line 617
    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    .line 619
    :cond_0
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    .line 620
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    .line 621
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 623
    :cond_1
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/4 v8, 0x1

    cmp-long v9, v3, v6

    if-lez v9, :cond_2

    .line 624
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    .line 625
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->z:J

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 626
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q()V

    .line 627
    return v8

    .line 629
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    return v8

    :cond_3
    return v0

    .line 631
    .end local v1    # "nowTime":J
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    return v0
.end method

.method private p()V
    .locals 6

    .line 640
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    .line 642
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n()V

    .line 643
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 644
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    const-string v2, "SMOOTHNESS_KEY_TIME_TODAY"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    .line 646
    :cond_0
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    .line 647
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SMOOTHNESS_KEY_TIME_TODAY"

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    goto :goto_0

    .line 651
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private q()V
    .locals 5

    .line 655
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    .line 657
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n()V

    .line 658
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    .line 659
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SMOOTHNESS_KEY_TIME_TODAY"

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    goto :goto_0

    .line 663
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private r()J
    .locals 6

    .line 667
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    .line 669
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n()V

    .line 670
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 671
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->y:Landroid/content/SharedPreferences;

    const-string v2, "SMOOTHNESS_KEY_TIME_TODAY"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J

    .line 673
    :cond_0
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->A:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-wide v1

    .line 678
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "MainLooperMonitor"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    const-wide/16 v2, 0xa

    monitor-exit v0

    return-wide v2

    .line 678
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 254
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->removeMessageLogging(Landroid/util/Printer;)V

    .line 259
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i()V

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b(Z)V

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Z)V

    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    if-eqz v0, :cond_0

    .line 263
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    .line 267
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->unregister(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 269
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    monitor-exit p0

    return-void

    .line 255
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "stopCal called outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .line 198
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/SmoothnessEventHandler;->a(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Ljava/lang/String;

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 214
    :cond_1
    monitor-exit p0

    return-void

    .line 216
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 220
    .local v2, "infos":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    .line 221
    monitor-exit p0

    return-void

    .line 223
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    if-eqz v0, :cond_4

    .line 224
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    .line 227
    :cond_4
    const/4 v0, 0x0

    aget-object v1, v2, v0

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->j:Ljava/lang/String;

    .line 228
    const/4 v1, 0x1

    aget-object v3, v2, v1

    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->k:Ljava/lang/String;

    .line 229
    const/4 v3, 0x2

    aget-object v4, v2, v3

    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m:Ljava/lang/String;

    .line 230
    const-string v4, "1"

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "3"

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->l:Z

    .line 232
    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b:Z

    if-eqz v3, :cond_7

    .line 233
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->d:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/TinyAppPageFluencyMonitor;

    .line 236
    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h()Z

    move-result v3

    if-nez v3, :cond_8

    .line 237
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(Z)V

    .line 238
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i()V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->n:J

    .line 242
    :cond_8
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/phone/mobilesdk/apm/base/MainLooperLogger;->addMessageLogging(Landroid/util/Printer;)V

    .line 244
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    if-nez v1, :cond_9

    .line 245
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor$a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;B)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 246
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->i:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xfa

    invoke-virtual/range {v3 .. v8}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->register(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :cond_9
    monitor-exit p0

    return-void

    .line 217
    .end local v2    # "infos":[Ljava/lang/String;
    :cond_a
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "startCal called outside main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .end local p1    # "info":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .line 483
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 486
    .local v1, "storedFinalScore":J
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    .line 487
    .local v5, "sp":Landroid/content/SharedPreferences;
    :try_start_1
    const-string v6, "SMOOTHNESS_SCORE"

    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v6

    .line 490
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    goto :goto_1

    .line 488
    :catch_0
    move-exception v4

    goto :goto_0

    .line 504
    .end local v1    # "storedFinalScore":J
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 488
    .restart local v1    # "storedFinalScore":J
    :catch_1
    move-exception v4

    move-object v5, v3

    .line 489
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v1, v6

    .line 492
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide v6, 0x7fffffffffffffffL

    :try_start_3
    iput-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 493
    const/4 v4, 0x0

    iput v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    .line 494
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 495
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "SMOOTHNESS_SCORE"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    goto :goto_2

    .line 496
    :catch_2
    move-exception v4

    .line 497
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "MainLooperMonitor"

    const-string/jumbo v7, "reset StoredScore Failed"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 502
    :cond_0
    monitor-exit v0

    return-object v3

    .line 504
    .end local v1    # "storedFinalScore":J
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 9

    .line 508
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 511
    .local v1, "storedFinalScore":J
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    .line 512
    .local v5, "sp":Landroid/content/SharedPreferences;
    :try_start_1
    const-string v6, "TINYAPP_SMOOTHNESS_SCORE"

    iget-wide v7, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v1, v6

    .line 515
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    goto :goto_1

    .line 513
    :catch_0
    move-exception v4

    goto :goto_0

    .line 529
    .end local v1    # "storedFinalScore":J
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 513
    .restart local v1    # "storedFinalScore":J
    :catch_1
    move-exception v4

    move-object v5, v3

    .line 514
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v1, v6

    .line 517
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide v6, 0x7fffffffffffffffL

    :try_start_3
    iput-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->t:J

    .line 518
    const/4 v4, 0x0

    iput v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->u:I

    .line 519
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 520
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "TINYAPP_SMOOTHNESS_SCORE"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    goto :goto_2

    .line 521
    :catch_2
    move-exception v4

    .line 522
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "MainLooperMonitor"

    const-string/jumbo v7, "reset StoredScore Failed"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->a(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 527
    :cond_0
    monitor-exit v0

    return-object v3

    .line 529
    .end local v1    # "storedFinalScore":J
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 696
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->C:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    .line 695
    .end local p0    # "this":Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 5
    .param p1, "x"    # Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r:J

    .line 356
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->s:J

    return-void

    .line 357
    :cond_1
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->s:J

    .line 360
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 361
    return-void

    .line 363
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->r:J

    sub-long/2addr v0, v2

    .line 364
    .local v0, "timeCost":J
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->q:J

    .line 365
    const-string v2, "android.view.Choreographer$FrameHandler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 366
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b(Z)V

    return-void

    .line 368
    :cond_3
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->m()Landroid/os/Message;

    move-result-object v2

    .line 369
    if-nez v2, :cond_4

    .line 370
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/MainLooperMonitor;->b(Z)V

    .line 374
    .end local v0    # "timeCost":J
    :cond_4
    return-void

    .line 352
    :cond_5
    :goto_0
    return-void
.end method
