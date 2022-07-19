.class public Lcom/uc/webview/export/internal/setup/bw;
.super Lcom/uc/webview/export/internal/setup/l;
.source "U4Source"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/uc/webview/export/internal/setup/bw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/bw;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bw;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    .line 43
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->g:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/uc/webview/export/internal/setup/bw;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/bw;)Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/bw;)Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/bw;)Lcom/uc/webview/export/utility/download/UpdateTask;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/bw;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    return-object p0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bw;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 49
    move-object/from16 v1, p0

    const-string v0, "CONTEXT"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    .line 50
    const-string v0, "ucmUpdUrl"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 51
    const-string v0, "chkMultiCore"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Boolean;

    .line 52
    const-string v0, "dlChecker"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/concurrent/Callable;

    .line 54
    const-string v0, "i"

    sget-object v2, Lcom/uc/webview/export/internal/setup/bw;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 57
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    .line 58
    const/4 v13, 0x2

    if-eqz v0, :cond_3

    .line 59
    iget-boolean v5, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isShareCore:Z

    if-eqz v5, :cond_1

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-ne v0, v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 60
    :goto_1
    if-nez v0, :cond_2

    .line 61
    const-string v5, "sc_udst"

    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stileUpdate : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    nop

    .line 65
    const-string v0, "csc_usl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 68
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "stile update task : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-nez v0, :cond_3

    .line 70
    const-string v0, "csc_usp"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 71
    return-void

    .line 75
    :cond_3
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 81
    new-instance v9, Lcom/uc/webview/export/internal/setup/bo;

    invoke-direct {v9}, Lcom/uc/webview/export/internal/setup/bo;-><init>()V

    .line 82
    const-string v0, "updWait"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-nez v0, :cond_4

    const-wide/32 v5, 0x6ddd00

    goto :goto_2

    :cond_4
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Long;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_5
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    check-cast v0, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    goto :goto_2

    .line 89
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 83
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 90
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v13, 0x927c0

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 92
    :try_start_0
    const-string v0, "sc_ustwm"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 94
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 98
    :cond_7
    move-object v0, v2

    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v5, Lcom/uc/webview/export/internal/setup/bw;->e:Ljava/lang/String;

    const-string v6, "Long.valueOf(String) exceptin."

    invoke-static {v5, v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 100
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "run:update from ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 102
    sget-object v13, Lcom/uc/webview/export/internal/setup/bw;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shareCoreWait: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " wait: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v14, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v14}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 105
    const-string v2, "upd_pro_lk"

    .line 106
    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/webkit/ValueCallback;

    .line 108
    if-eqz v7, :cond_8

    .line 109
    :try_start_1
    const-string v2, "lock"

    invoke-interface {v7, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 111
    :cond_8
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 112
    nop

    .line 1195
    :try_start_2
    const-string v2, "updates"

    invoke-static {v10, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1198
    const-string v3, "dwnRetryWait"

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1199
    const/4 v6, 0x0

    if-nez v3, :cond_9

    move-object/from16 v17, v6

    goto :goto_5

    :cond_9
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_a

    check-cast v3, Ljava/lang/Long;

    .line 1202
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    goto :goto_4

    :cond_a
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_b

    check-cast v3, Ljava/lang/Integer;

    .line 1204
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v17

    goto :goto_4

    .line 1205
    :cond_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 1201
    :goto_4
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v17, v3

    .line 1207
    :goto_5
    const-string v3, "dwnRetryMaxWait"

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/internal/setup/bw;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1208
    if-nez v3, :cond_c

    move-object/from16 v18, v6

    goto :goto_7

    :cond_c
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_d

    check-cast v3, Ljava/lang/Long;

    .line 1211
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_6

    :cond_d
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    check-cast v3, Ljava/lang/Integer;

    .line 1213
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v18

    goto :goto_6

    .line 1214
    :cond_e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1210
    :goto_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v18, v3

    .line 1216
    :goto_7
    new-instance v5, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const-string v20, "sdk_shell.jar"

    new-instance v3, Lcom/uc/webview/export/internal/utility/g$b;

    const-string v2, "ut_cvsv"

    invoke-direct {v3, v2}, Lcom/uc/webview/export/internal/utility/g$b;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v2, v5

    move-object/from16 v21, v3

    move-object v3, v10

    move-object v15, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v11

    move-object v11, v6

    move-object/from16 v6, v20

    move-object v11, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v14

    move-object v14, v9

    move-object/from16 v9, v18

    :try_start_3
    invoke-direct/range {v2 .. v9}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object v15, v1, Lcom/uc/webview/export/internal/setup/bw;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1219
    const-string v2, "check"

    new-instance v3, Lcom/uc/webview/export/internal/setup/by;

    invoke-direct {v3, v1, v10, v12}, Lcom/uc/webview/export/internal/setup/by;-><init>(Lcom/uc/webview/export/internal/setup/bw;Landroid/content/Context;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v15, v2, v3}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "exception"

    new-instance v4, Lcom/uc/webview/export/internal/setup/ch;

    invoke-direct {v4, v1}, Lcom/uc/webview/export/internal/setup/ch;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    .line 1253
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "downloadException"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cg;

    invoke-direct {v4, v1}, Lcom/uc/webview/export/internal/setup/cg;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    .line 1271
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "success"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cf;

    invoke-direct {v4, v1, v14}, Lcom/uc/webview/export/internal/setup/cf;-><init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;)V

    .line 1331
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "failed"

    new-instance v4, Lcom/uc/webview/export/internal/setup/ce;

    invoke-direct {v4, v1, v14}, Lcom/uc/webview/export/internal/setup/ce;-><init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;)V

    .line 1336
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "exists"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cd;

    invoke-direct {v4, v1, v14}, Lcom/uc/webview/export/internal/setup/cd;-><init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;)V

    .line 1346
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "deleteDownFile"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cc;

    invoke-direct {v4, v1}, Lcom/uc/webview/export/internal/setup/cc;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    .line 1351
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    const-string v3, "progress"

    new-instance v4, Lcom/uc/webview/export/internal/setup/cb;

    invoke-direct {v4, v1}, Lcom/uc/webview/export/internal/setup/cb;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    .line 1359
    invoke-virtual {v2, v3, v4}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object v2

    .line 1367
    invoke-virtual {v2}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bo;->a(J)Landroid/util/Pair;

    move-result-object v2

    .line 115
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_1a

    .line 117
    nop

    .line 1371
    const-string v3, ".shareCoreWaitTimeout"

    invoke-static {v13, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1372
    nop

    .line 1374
    :try_start_4
    const-string v3, "sc_ldpl"

    invoke-static {v3}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1375
    const-string v5, "sc_lshco"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v3, :cond_10

    .line 1376
    nop

    .line 1377
    :try_start_5
    const-string v3, ".shareCoreWaitTimeout !CDKeys.CD_VALUE_LOAD_POLICY_SHARE_CORE.equals(shareCoreLoadPolicy)."

    invoke-static {v13, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1442
    :try_start_6
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    .line 1443
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 1378
    :cond_f
    goto/16 :goto_8

    .line 1442
    :catchall_0
    move-exception v0

    const/16 v16, 0x1

    goto/16 :goto_b

    .line 1380
    :cond_10
    :try_start_7
    const-string v3, "shareCoreEvt"

    invoke-virtual {v1, v3}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1381
    if-nez v3, :cond_12

    .line 1382
    nop

    .line 1383
    :try_start_8
    const-string v3, ".shareCoreWaitTimeout dlShareCoreCB == null."

    invoke-static {v13, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1442
    :try_start_9
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_11

    .line 1443
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1384
    :cond_11
    goto/16 :goto_8

    .line 1386
    :cond_12
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1388
    :try_start_b
    iget-boolean v5, v1, Lcom/uc/webview/export/internal/setup/bw;->f:Z

    if-nez v5, :cond_14

    iget-boolean v5, v1, Lcom/uc/webview/export/internal/setup/bw;->g:Z

    if-nez v5, :cond_14

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    .line 1389
    nop

    .line 1390
    :try_start_c
    const-string v3, ".shareCoreWaitTimeout !mHasExcepted && !mHasFailed"

    invoke-static {v13, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1442
    :try_start_d
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_13

    .line 1443
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1391
    :cond_13
    goto :goto_8

    .line 1393
    :catchall_1
    move-exception v0

    const/16 v16, 0x1

    goto :goto_a

    :cond_14
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1395
    :try_start_f
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    .line 1397
    if-eqz v5, :cond_17

    iget v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 1399
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v5

    const-string v6, "MULTI_CORE_TYPE"

    invoke-virtual {v5, v6}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-nez v5, :cond_17

    .line 1400
    :cond_15
    nop

    .line 1401
    :try_start_10
    const-string v3, ".shareCoreWaitTimeout UCCore had initialized."

    invoke-static {v13, v3}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1442
    :try_start_11
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_16

    .line 1443
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1402
    :cond_16
    goto :goto_8

    .line 1404
    :cond_17
    :try_start_12
    new-instance v5, Lcom/uc/webview/export/internal/setup/bz;

    invoke-direct {v5, v1, v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bz;-><init>(Lcom/uc/webview/export/internal/setup/bw;Lcom/uc/webview/export/internal/setup/bo;Landroid/webkit/ValueCallback;Landroid/util/Pair;)V

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1442
    nop

    .line 119
    :goto_8
    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    goto :goto_9

    :cond_18
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_9
    invoke-virtual {v14, v2, v3}, Lcom/uc/webview/export/internal/setup/bo;->a(J)Landroid/util/Pair;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_c

    .line 1393
    :catchall_2
    move-exception v0

    const/16 v16, 0x0

    :goto_a
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1442
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 1393
    :catchall_4
    move-exception v0

    goto :goto_a

    .line 1442
    :catchall_5
    move-exception v0

    const/16 v16, 0x0

    :goto_b
    if-eqz v16, :cond_19

    :try_start_16
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    .line 1443
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v14, v3, v2}, Lcom/uc/webview/export/internal/setup/bo;->a(ILjava/lang/Object;)V

    :cond_19
    throw v0

    .line 121
    :cond_1a
    nop

    .line 123
    :goto_c
    monitor-exit v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 125
    if-eqz v11, :cond_1b

    .line 126
    const-string v0, "unlock"

    invoke-interface {v11, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 130
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "result.first: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_27

    .line 136
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_26

    .line 138
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_25

    .line 143
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    .line 144
    :goto_d
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    goto :goto_e

    :cond_1d
    const/4 v2, 0x0

    .line 145
    :goto_e
    if-nez v0, :cond_1f

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v14, 0x0

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v14, 0x1

    .line 146
    :goto_10
    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/bw;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v3}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateDir()Ljava/io/File;

    move-result-object v3

    .line 148
    if-eqz v0, :cond_20

    const-string v4, "csc_udetm"

    invoke-virtual/range {v17 .. v17}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_20
    if-eqz v14, :cond_24

    if-nez v0, :cond_21

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 150
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 151
    :cond_21
    const-string v0, "new ThinSetupTask."

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v4, "gk_upd_exist"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/uc/webview/export/internal/setup/az;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/az;-><init>()V

    goto :goto_11

    :cond_22
    new-instance v0, Lcom/uc/webview/export/internal/setup/bf;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/bf;-><init>()V

    .line 155
    :goto_11
    nop

    .line 156
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/av;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/bw;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    iget-object v2, v1, Lcom/uc/webview/export/internal/setup/bw;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/l;->setCallbacks(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "dexFilePath"

    .line 159
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "soFilePath"

    .line 160
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "resFilePath"

    .line 161
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmCfgFile"

    .line 162
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmLibDir"

    .line 163
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmZipDir"

    .line 164
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmZipFile"

    .line 165
    invoke-virtual {v0, v2, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "ucmKrlDir"

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "bo_enable_load_class"

    .line 167
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "switch"

    new-instance v3, Lcom/uc/webview/export/internal/setup/ca;

    invoke-direct {v3, v1}, Lcom/uc/webview/export/internal/setup/ca;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "stop"

    new-instance v3, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    invoke-direct {v3, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 178
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v2, "setup"

    .line 179
    invoke-static/range {v19 .. v19}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v6, v4

    goto :goto_12

    :cond_23
    new-instance v6, Lcom/uc/webview/export/internal/setup/bx;

    invoke-direct {v6, v1}, Lcom/uc/webview/export/internal/setup/bx;-><init>(Lcom/uc/webview/export/internal/setup/bw;)V

    :goto_12
    invoke-virtual {v0, v2, v6}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    .line 188
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 189
    return-void

    .line 190
    :cond_24
    const-string v0, "else, need not new ThinSetupTask."

    invoke-static {v13, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 139
    :cond_25
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfbe

    const-string v3, "Thread [%s] waiting timeout for share core task."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 137
    :cond_26
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfb3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v0, v3, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 132
    :cond_27
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfaa

    const-string v3, "Thread [%s] waiting for update is up to [%s] milis."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 135
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 133
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 123
    :catchall_6
    move-exception v0

    move-object v11, v7

    move-object v14, v9

    :goto_13
    :try_start_17
    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 125
    :catchall_7
    move-exception v0

    goto :goto_14

    .line 123
    :catchall_8
    move-exception v0

    goto :goto_13

    .line 125
    :catchall_9
    move-exception v0

    move-object v11, v7

    :goto_14
    if-eqz v11, :cond_28

    .line 126
    const-string v2, "unlock"

    invoke-interface {v11, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_28
    throw v0

    .line 76
    :cond_29
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc6

    const-string v3, "Option [%s] expected."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ucmUpdUrl"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 77
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
