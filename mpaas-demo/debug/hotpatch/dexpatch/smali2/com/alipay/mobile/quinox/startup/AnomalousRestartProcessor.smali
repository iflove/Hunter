.class public Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
.super Ljava/lang/Object;
.source "AnomalousRestartProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Z

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/lang/String;
    .locals 3
    .param p0, "startTimeList"    # Ljava/util/List;
    .param p1, "validDataCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 196
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_1

    .line 197
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 199
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private static a(Ljava/lang/String;J)Ljava/util/List;
    .locals 7
    .param p0, "historyStartTimes"    # Ljava/lang/String;
    .param p1, "valueToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 168
    .local v2, "rList":Ljava/util/List;
    move-object v2, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    return-object v2

    .line 172
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 174
    .local v1, "startTime":Ljava/lang/String;
    move-object v1, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_1

    .line 177
    :catch_0
    move-exception v5

    .line 173
    .end local v1    # "startTime":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_2
    return-object v2
.end method

.method private a()V
    .locals 5

    .line 82
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;-><init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V

    const-wide/16 v2, 0x2710

    const-string v4, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->scheduleTimer(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/util/TimerTask;

    return-void

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Z

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;-><init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_2
    return-void
.end method

.method private declared-synchronized a(J)Z
    .locals 11
    .param p1, "time"    # J

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    const-string v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "pushARLogTime"

    const-string v4, "-1"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .local v0, "pushARLogTimeString":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 259
    .local v4, "lastLogTime":J
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v6

    .line 262
    goto :goto_0

    .line 260
    .end local p0    # "this":Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    :catch_0
    move-exception v2

    .line 263
    :goto_0
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 264
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    .line 265
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "pushARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    monitor-exit p0

    return v2

    .line 268
    :cond_0
    monitor-exit p0

    return v3

    .line 271
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "pushARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    monitor-exit p0

    return v2

    .line 254
    .end local v0    # "pushARLogTimeString":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "lastLogTime":J
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 19
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .line 19
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .param p1, "x1"    # J

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .param p1, "x1"    # J

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(J)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(J)Z
    .locals 11
    .param p1, "time"    # J

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    const-string v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    .local v1, "sp":Landroid/content/SharedPreferences;
    move-object v1, v0

    const-string v2, "mainARLogTime"

    const-string v4, "-1"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .local v0, "mainARLogTimeString":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 288
    .local v4, "lastLogTime":J
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v4, v6

    .line 291
    goto :goto_0

    .line 289
    .end local p0    # "this":Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    :catch_0
    move-exception v2

    .line 292
    :goto_0
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 293
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    .line 294
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "mainARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    monitor-exit p0

    return v2

    .line 297
    :cond_0
    monitor-exit p0

    return v3

    .line 300
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "mainARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    monitor-exit p0

    return v2

    .line 283
    .end local v0    # "mainARLogTimeString":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "lastLogTime":J
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .locals 2

    .line 54
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;-><init>()V

    sput-object v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    .line 67
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Z

    .line 69
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a()V

    .line 70
    return-object p0
.end method

.method public setUIStarted(Z)V
    .locals 1
    .param p1, "uiStarted"    # Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    return-void
.end method

.method public declared-synchronized shouldReportOtherProcessException(J)Z
    .locals 9
    .param p1, "time"    # J

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    const-string v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 214
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v4, "otherProcessCrashLogTimes"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 216
    .local v1, "crashTimeList":Ljava/util/List;
    move-object v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 217
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    div-long/2addr v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    const-wide/16 v7, 0x3c

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 219
    monitor-exit p0

    return v3

    .line 222
    .end local p0    # "this":Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "otherProcessCrashLogTimes"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 212
    .end local v1    # "crashTimeList":Ljava/util/List;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldReportOtherProcessOtherException(J)Z
    .locals 9
    .param p1, "time"    # J

    monitor-enter p0

    .line 234
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->e:Landroid/content/Context;

    const-string v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 235
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v4, "otherProcessOtherCrashLogTimes"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 237
    .local v1, "crashTimeList":Ljava/util/List;
    move-object v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 238
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    div-long/2addr v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const-wide/16 v7, 0x3c

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 240
    monitor-exit p0

    return v3

    .line 243
    .end local p0    # "this":Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "otherProcessOtherCrashLogTimes"

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 233
    .end local v1    # "crashTimeList":Ljava/util/List;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local p1    # "time":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
