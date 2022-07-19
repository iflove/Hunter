.class public final Lcom/alipay/mobile/quinox/framemonitor/f;
.super Ljava/lang/Object;
.source "JerkMonitor.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/framemonitor/f$b;,
        Lcom/alipay/mobile/quinox/framemonitor/f$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:J

.field private final e:Lcom/alipay/mobile/quinox/framemonitor/g;

.field private final f:Lcom/alipay/mobile/quinox/framemonitor/h;

.field private final g:Lcom/alipay/mobile/quinox/framemonitor/c;

.field private final h:Lcom/alipay/mobile/quinox/framemonitor/d;

.field private final i:Lcom/alipay/mobile/quinox/framemonitor/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->a:J

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    .line 45
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 57
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/g;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/g;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->e:Lcom/alipay/mobile/quinox/framemonitor/g;

    .line 59
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/h;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/h;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->f:Lcom/alipay/mobile/quinox/framemonitor/h;

    .line 61
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/c;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->g:Lcom/alipay/mobile/quinox/framemonitor/c;

    .line 63
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/framemonitor/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    .line 65
    new-instance v0, Lcom/alipay/mobile/quinox/framemonitor/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/a;-><init>(Lcom/alipay/mobile/quinox/framemonitor/f;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->i:Lcom/alipay/mobile/quinox/framemonitor/a;

    .line 66
    return-void
.end method

.method private a(J)V
    .locals 4
    .param p1, "startupTimeMillis"    # J

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/d;->e()Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    move-result-object v0

    .line 152
    .local v0, "totalCpuUsage":Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/quinox/framemonitor/f$b;

    invoke-direct {v2, p1, p2, v0}, Lcom/alipay/mobile/quinox/framemonitor/f$b;-><init>(JLcom/alipay/mobile/quinox/framemonitor/cpu/c;)V

    const-string v3, "report-long-startup"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method static synthetic a(Ljava/io/PrintStream;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/PrintStream;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    .line 28
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/framemonitor/f;->b(Ljava/io/PrintStream;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;)V

    return-void
.end method

.method private static b(Ljava/io/PrintStream;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;)V
    .locals 18
    .param p0, "printer"    # Ljava/io/PrintStream;
    .param p1, "cpuUsageInfo"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "#ParsedCpuInfo"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    if-nez v1, :cond_0

    .line 172
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->c:Ljava/util/List;

    iget-object v3, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 177
    .local v2, "topProcessList":Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Top "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " process"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    iget-wide v7, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->a:J

    long-to-double v7, v7

    .line 180
    .local v7, "totalCpuTime":D
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v14, 0x3

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    .line 181
    .local v9, "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    const-wide/16 v15, 0x0

    cmpl-double v17, v7, v15

    if-lez v17, :cond_1

    .line 182
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v14, [Ljava/lang/Object;

    iget v4, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    .line 183
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v5

    move-object/from16 v17, v6

    iget-wide v5, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iget-wide v12, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    add-long/2addr v5, v12

    long-to-double v5, v5

    div-double/2addr v5, v7

    mul-double v5, v5, v10

    .line 184
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v14, v6

    iget-object v5, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->b:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v14, v6

    .line 182
    const-string v5, "pid: %d, %.2f%%, %s\n"

    invoke-virtual {v0, v15, v5, v14}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-object/from16 v6, v17

    const/16 v4, 0xf

    const/4 v5, 0x0

    goto :goto_0

    .line 187
    :cond_1
    move-object/from16 v17, v6

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v14, [Ljava/lang/Object;

    iget v10, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->a:I

    .line 188
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    aput-object v10, v6, v4

    iget-wide v10, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iget-wide v12, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v6, v11

    iget-object v10, v9, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->b:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v10, v6, v11

    .line 187
    const-string v10, "pid: %d, %d(*), %s\n"

    invoke-virtual {v0, v5, v10, v6}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 190
    .end local v9    # "procInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    move-object/from16 v6, v17

    const/16 v4, 0xf

    const/4 v5, 0x0

    goto :goto_0

    .line 192
    :cond_2
    move-object/from16 v17, v6

    iget-object v3, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->d:Ljava/util/List;

    iget-object v5, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 193
    .local v3, "topThreadList":Ljava/util/List;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " thread in my process"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    .line 195
    .local v6, "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v14, [Ljava/lang/Object;

    iget v13, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->a:I

    .line 196
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v4, 0x0

    aput-object v13, v12, v4

    move-object v13, v5

    iget-wide v4, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    iget-wide v14, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    add-long/2addr v4, v14

    long-to-double v4, v4

    iget-wide v14, v1, Lcom/alipay/mobile/quinox/framemonitor/cpu/c;->b:J

    long-to-double v14, v14

    div-double/2addr v4, v14

    mul-double v4, v4, v10

    .line 197
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v12, v5

    iget-object v4, v6, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->b:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v4, v12, v14

    .line 195
    const-string v4, "tid: %d, %.2f%%, %s\n"

    invoke-virtual {v0, v9, v4, v12}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 199
    .end local v6    # "threadInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    move-object v5, v13

    const/4 v14, 0x3

    goto :goto_1

    .line 200
    :cond_3
    return-void
.end method

.method private c()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->f:Lcom/alipay/mobile/quinox/framemonitor/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/h;->a()V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->g:Lcom/alipay/mobile/quinox/framemonitor/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/c;->a()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/d;->a()V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->i:Lcom/alipay/mobile/quinox/framemonitor/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/a;->c()V

    .line 160
    return-void
.end method

.method private d()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->i:Lcom/alipay/mobile/quinox/framemonitor/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/a;->b()V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->g:Lcom/alipay/mobile/quinox/framemonitor/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/c;->b()V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/d;->b()V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->f:Lcom/alipay/mobile/quinox/framemonitor/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/h;->b()V

    .line 167
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 100
    const-string v0, "JerkMonitor"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->e:Lcom/alipay/mobile/quinox/framemonitor/g;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/g;->a(Landroid/util/Printer;)V

    .line 104
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/d;->d()V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->e:Lcom/alipay/mobile/quinox/framemonitor/g;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/framemonitor/g;->a(Landroid/util/Printer;)V

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->d:J

    .line 110
    return-void
.end method

.method final a(JJ)V
    .locals 10
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyBlockEvent, jerk time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JerkMonitor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->a:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mStartTimestamp != startTime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->f:Lcom/alipay/mobile/quinox/framemonitor/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/framemonitor/h;->b(JJ)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "finalStack":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->f:Lcom/alipay/mobile/quinox/framemonitor/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/framemonitor/h;->a(JJ)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "stacks":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->g:Lcom/alipay/mobile/quinox/framemonitor/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/quinox/framemonitor/c;->a(JJ)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "threadsDump":Ljava/lang/String;
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->h:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-virtual {v0, p3, p4}, Lcom/alipay/mobile/quinox/framemonitor/d;->a(J)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;

    move-result-object v6

    .line 144
    .local v6, "cpuUsageInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v9, Lcom/alipay/mobile/quinox/framemonitor/f$a;

    sub-long v7, p3, p1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/quinox/framemonitor/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/quinox/framemonitor/cpu/c;J)V

    const-string v2, "save-jerk-stacktrace"

    invoke-virtual {v0, v9, v2}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v3    # "finalStack":Ljava/lang/String;
    .end local v4    # "threadsDump":Ljava/lang/String;
    .end local v5    # "stacks":Ljava/lang/String;
    .end local v6    # "cpuUsageInfo":Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
    return-void

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public final b()V
    .locals 7

    .line 114
    const-string v0, "JerkMonitor"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    if-nez v1, :cond_0

    .line 116
    const-string v1, "already stopped"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->e:Lcom/alipay/mobile/quinox/framemonitor/g;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/quinox/framemonitor/g;->b(Landroid/util/Printer;)V

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/f;->d()V

    .line 122
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->a:J

    .line 123
    iget-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->i:Lcom/alipay/mobile/quinox/framemonitor/a;

    iput-wide v1, v3, Lcom/alipay/mobile/quinox/framemonitor/a;->a:J

    .line 124
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->d:J

    sub-long/2addr v3, v5

    move-wide v0, v1

    .line 127
    .local v0, "startupTimeMillis":J
    move-wide v0, v3

    const-wide/16 v5, 0x1388

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/f;->a(J)V

    .line 130
    :cond_1
    return-void
.end method

.method public final println(Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;

    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->b:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 74
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    if-eqz v0, :cond_1

    .line 75
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/f;->d()V

    .line 78
    :cond_1
    return-void

    .line 80
    :cond_2
    const-string v0, ">>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    if-eqz v0, :cond_3

    .line 82
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 83
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/f;->d()V

    .line 85
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    if-nez v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->i:Lcom/alipay/mobile/quinox/framemonitor/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/quinox/framemonitor/a;->a:J

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->a:J

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/f;->c()V

    return-void

    .line 91
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    if-eqz v0, :cond_5

    .line 92
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/framemonitor/f;->c:Z

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/f;->d()V

    .line 96
    :cond_5
    return-void
.end method
