.class public Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diagnoseTask"    # Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    .line 70
    iget-object v0, p2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    const-string/jumbo v1, "trafficLog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 72
    .local v0, "gmtZone":Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    .end local v0    # "gmtZone":Ljava/util/TimeZone;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/io/File;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Ljava/io/File;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 16
    .param p1, "logFilesDir"    # Ljava/io/File;

    .line 411
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 414
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 415
    .local v3, "files":[Ljava/io/File;
    move-object v3, v0

    if-eqz v0, :cond_9

    array-length v0, v3

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 419
    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v2

    move-wide v10, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_8

    aget-object v0, v3, v9

    .line 420
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    if-eqz v0, :cond_7

    .line 424
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v0, v12, v6

    if-nez v0, :cond_2

    goto :goto_2

    .line 428
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v8, "fileName":Ljava/lang/String;
    move-object v8, v0

    const-string v12, ".pzt.zip"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".pzt.2nd"

    .line 431
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".pzt"

    .line 432
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 437
    :cond_3
    const-string v0, "_"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 438
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 439
    .local v10, "fileTime":J
    move-wide v10, v12

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v14, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    cmp-long v0, v12, v14

    if-ltz v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v12, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->g:Ljava/util/Set;

    .line 441
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->g:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    iget-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->j:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->j:J

    .line 447
    iget-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->h:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->h:J

    .line 448
    iget-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->i:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v10    # "fileTime":J
    :cond_4
    goto :goto_4

    .line 450
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 433
    :cond_5
    :goto_1
    goto :goto_4

    .line 425
    :cond_6
    :goto_2
    goto :goto_4

    .line 450
    :goto_3
    move-object v0, v8

    .line 451
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v12, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "fillUploadFileList: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    .line 419
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "file":Ljava/io/File;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 454
    :cond_8
    return-void

    .line 416
    :cond_9
    :goto_5
    return-void

    .line 412
    .end local v3    # "files":[Ljava/io/File;
    :cond_a
    :goto_6
    return-void
.end method

.method private a(Ljava/io/File;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p1, "zippedFile"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .param p3, "headerParameters"    # Ljava/util/Map;
    .param p4, "ackDiagnoseMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 395
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uploadCoreForRetry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UploadConstants;->a()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    .line 400
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V

    const/4 v1, 0x0

    .line 401
    .local v1, "uploader":Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
    move-object v1, v0

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/util/Map;)V

    .line 402
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v1    # "uploader":Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;
    .end local v3    # "url":Ljava/lang/String;
    return-void

    .line 405
    :catchall_0
    move-exception v0

    .line 406
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    const-string/jumbo v3, "uploadCoreForRetry"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 13

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->g:Ljava/util/Set;

    .line 92
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->h:J

    .line 93
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->i:J

    .line 94
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->j:J

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v6, "[AlipayLogUpload.uploadLog] "

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    nop

    .line 101
    invoke-static {}, Lcom/alipay/mobile/monitor/util/TransUtils;->isOfflineForExternalFile()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 103
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v9, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v6}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v6

    .line 106
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    const-string/jumbo v10, "uploadLog"

    invoke-interface {v8, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v6, v6, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    if-nez v6, :cond_1

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ic"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 112
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/monitor/util/TransUtils;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v8

    .line 113
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v8}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 116
    :catchall_1
    move-exception v8

    .line 117
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    const-string/jumbo v11, "uploadLog"

    invoke-interface {v9, v10, v11, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 118
    :goto_1
    goto :goto_3

    .line 123
    :cond_0
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/monitor/util/TransUtils;->getCommonExternalStorageDir()Ljava/io/File;

    move-result-object v6

    .line 124
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v9, v9, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v6}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    goto :goto_2

    .line 127
    :catchall_2
    move-exception v6

    .line 128
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    const-string/jumbo v10, "uploadLog"

    invoke-interface {v8, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_1
    :goto_2
    move-object v6, v7

    :goto_3
    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v3, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [no files to upload] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v3, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v2, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v3, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->h:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "( "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, " ) "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v0, "this period contains none file !"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->NO_TARGET_FILE:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 144
    :cond_2
    monitor-exit p0

    return-void

    .line 147
    :cond_3
    :try_start_7
    const-string v8, " files count:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v8, ", files length: "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->j:J

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a()Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    sget-object v10, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->FILE_ZIPPING:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    .line 150
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 149
    invoke-virtual {v8, v9, v10, v11}, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician;->a(Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 153
    :try_start_8
    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 154
    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 157
    goto :goto_4

    .line 155
    :catchall_3
    move-exception v8

    .line 156
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    invoke-interface {v9, v10, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :goto_4
    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    const/4 v9, 0x0

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    sget-object v10, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    if-ne v8, v10, :cond_4

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v8, 0x1

    .line 161
    :goto_6
    if-eqz v8, :cond_6

    iget-wide v10, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->h:J

    cmp-long v8, v10, v0

    if-gez v8, :cond_6

    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->i:J

    cmp-long v8, v0, v2

    if-lez v8, :cond_6

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->h:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->d:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v10, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->i:J

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    .line 167
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    .line 168
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    .line 173
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->p:Z

    if-eqz v0, :cond_7

    move-object v0, v7

    goto :goto_7

    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->b:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "diagnose_"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v8, v8, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".zip"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    :goto_7
    nop

    .line 182
    const-string v2, "applog"

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v3, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "trafficLog"

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v3, v3, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->c:Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move-object v2, v7

    goto :goto_9

    .line 185
    :cond_9
    :goto_8
    nop

    .line 186
    new-instance v2, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;

    invoke-direct {v2, p0, v6}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$1;-><init>(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/lang/String;)V

    .line 218
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 220
    :try_start_a
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v7, v2}, Lcom/alipay/mobile/monitor/util/ZipUtils;->zipFile(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Lcom/alipay/mobile/monitor/util/ZipUtils$ZipFileHandler;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 231
    nop

    .line 233
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 234
    const-string v6, ", zipping spend: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const-string v2, ", zipped length: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    goto/16 :goto_c

    .line 245
    :cond_a
    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-object v2, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->i:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    sget-object v3, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TASK_BY_MANUAL:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-boolean v2, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->f:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v2, v2, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->r:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v6, v6, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->r:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_c

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_b

    .line 251
    const-string v0, ", zipped limit: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->c:Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;

    iget-wide v0, v0, Lcom/alipay/mobile/logmonitor/util/upload/UserDiagnostician$DiagnoseTask;->r:J

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->TRAFIC_LIMIT:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 254
    :cond_b
    monitor-exit p0

    return-void

    .line 257
    :cond_c
    :try_start_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v3, "CompressType"

    const-string/jumbo v6, "zip"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->isZipAndSevenZip()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v10, 0x300000

    cmp-long v3, v6, v10

    if-lez v3, :cond_f

    .line 263
    invoke-static {}, Lcom/alipay/mobile/monitor/util/NetUtils;->isNetworkUseWifi()Z

    move-result v3

    if-nez v3, :cond_f

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".7z"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    nop

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 271
    nop

    .line 272
    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 271
    invoke-static {v10, v3}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LzmaAlone;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v7

    .line 274
    const-string v3, ", 7Zing spend: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    const-string v3, ", 7Zed length: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v3, ", 7Z success: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 284
    goto :goto_a

    .line 278
    :catchall_4
    move-exception v3

    .line 279
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    .line 280
    const-string v7, ", 7Zing spend: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    const-string v7, ", 7Zed length: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    const-string v7, ", catch throwable: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v7, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_a
    if-eqz v9, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-lez v3, :cond_e

    .line 287
    invoke-static {v1}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 288
    nop

    .line 290
    if-eqz v0, :cond_d

    .line 291
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".7z"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 293
    :cond_d
    const-string v1, "CompressType"

    const-string v3, "7z"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    move-object v1, v6

    goto :goto_b

    .line 296
    :cond_e
    invoke-static {v6}, Lcom/alipay/mobile/monitor/util/FileUtils;->deleteFileNotDir(Ljava/io/File;)V

    .line 300
    :cond_f
    move-object v9, v0

    :goto_b
    nop

    .line 301
    nop

    .line 302
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;

    move-object v6, v0

    move-object v7, p0

    move-object v8, v12

    move-object v10, v1

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader$2;-><init>(Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/io/File;Ljava/util/HashMap;)V

    .line 390
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->a(Ljava/io/File;Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 391
    monitor-exit p0

    return-void

    .line 237
    :cond_10
    :goto_c
    :try_start_f
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v0, :cond_11

    .line 238
    const-string v0, ", not exist: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    sget-object v1, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 241
    :cond_11
    monitor-exit p0

    return-void

    .line 221
    :catchall_5
    move-exception v0

    .line 222
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    .line 223
    const-string v4, ", zipping spend: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, ", zipped length: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", catch throwable: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    if-eqz v1, :cond_12

    .line 228
    sget-object v2, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;->ZIPPING_ERROR:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;->onFail(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus$Code;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 230
    :cond_12
    monitor-exit p0

    return-void

    .line 89
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;)V
    .locals 0
    .param p1, "taskCallBack"    # Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/locallog/AlipayLogUploader;->e:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    .line 78
    return-void
.end method
