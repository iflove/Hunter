.class public Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;
.super Ljava/lang/Object;
.source "MpaasLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

.field private d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

.field private e:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "10.1.68.23_default"

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 51
    new-instance v0, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 52
    new-instance v0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 53
    new-instance v0, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->e:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    .line 54
    return-void
.end method

.method private static a()V
    .locals 6

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "inputReader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 60
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "mpaas_baseline.config"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 62
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 63
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 64
    .local v5, "properties":Ljava/util/Properties;
    move-object v5, v3

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 65
    const-string v3, "baseline"

    invoke-virtual {v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v4, "baseline":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    sput-object v4, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "baseline":Ljava/lang/String;
    .end local v5    # "properties":Ljava/util/Properties;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    .line 81
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    return-void

    .line 82
    :catchall_1
    move-exception v2

    .line 84
    return-void

    .line 69
    :catchall_2
    move-exception v2

    .line 70
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "MpaasLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "read mpaas_baseline.config fail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 72
    nop

    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 77
    goto :goto_1

    .line 75
    :catchall_3
    move-exception v2

    .line 79
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 81
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    return-void

    .line 87
    :cond_2
    return-void

    .line 72
    :catchall_4
    move-exception v2

    if-eqz v1, :cond_3

    .line 74
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 77
    goto :goto_2

    .line 75
    :catchall_5
    move-exception v3

    .line 79
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 81
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 84
    goto :goto_3

    .line 82
    :catchall_6
    move-exception v3

    .line 84
    :cond_4
    :goto_3
    throw v2
.end method


# virtual methods
.method public anr(Ljava/util/Map;)V
    .locals 12
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 289
    if-eqz p1, :cond_0

    .line 290
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 297
    const-string v7, "BizCanNotUse"

    const-string v8, "BIZ_APM"

    const-string v9, "APM_ANR"

    const-string v10, "1000"

    move-object v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 293
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 300
    return-void
.end method

.method public autoClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 353
    if-nez p1, :cond_0

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MpaasLogger"

    const-string v2, "autoClick: behavior can\'t be null."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 363
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 365
    const-string v6, "auto_click"

    invoke-static {v1, v6, p1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 360
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 366
    return-void
.end method

.method public autoEvent(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 336
    if-nez p1, :cond_0

    .line 337
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MpaasLogger"

    const-string v2, "autoEvent: behavior can\'t be null."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 340
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 346
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 348
    const-string v6, "auto_event"

    invoke-static {v1, v6, p1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 343
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 349
    return-void
.end method

.method public autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 8
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 319
    if-nez p1, :cond_0

    .line 320
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "MpaasLogger"

    const-string v2, "autoOpenPage: behavior can\'t be null."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 329
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 331
    const-string v6, "auto_openPage"

    invoke-static {v1, v6, p1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 326
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 332
    return-void
.end method

.method public behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 1
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .line 147
    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "behavior"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "behaviorID"    # Ljava/lang/String;

    .line 152
    if-nez p1, :cond_0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bizType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", behavior can\'t be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "MpaasLogger"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getBehaviourPro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 161
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mp_module"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const-string/jumbo v0, "mp_version"

    invoke-virtual {p1, v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 168
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 170
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 172
    invoke-static {v1, p4, p1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 167
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 174
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;)V
    .locals 1
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 1
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 107
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->behavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    return-void
.end method

.method public behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/util/Map;)V
    .locals 1
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public behavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object p2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bizType is empty, use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instead, seedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpaasLogger"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 123
    .local v1, "behavior":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "mp_baseline"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "mp_module"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string/jumbo v0, "mp_version"

    invoke-virtual {v1, v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v5, 0x0

    new-instance v6, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 139
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v3

    invoke-direct {v6, v3}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 141
    const-string v4, "event"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v8

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 136
    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 143
    return-void
.end method

.method public clientLaunch()V
    .locals 9

    .line 200
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 201
    .local v1, "behavior":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string/jumbo v2, "reportActive"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "mp_baseline"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    const-string/jumbo v2, "mp_module"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 210
    const-string v4, "event"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 205
    invoke-interface {v0, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 212
    return-void
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "logId"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 234
    .local v1, "behavior":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object p2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_USER_BEHAVIOR:Ljava/lang/String;

    .line 238
    :cond_0
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 239
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 242
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v4, 0x0

    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 249
    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getLoggerLevel()I

    move-result v2

    invoke-direct {v5, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 251
    const-string v3, "event"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v7

    move-object v2, v8

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 246
    invoke-interface {v0, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 253
    return-void
.end method

.method public lag(Ljava/util/Map;)V
    .locals 8
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->e:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    .line 283
    const-string/jumbo v5, "performance"

    const-string v6, "lag"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 279
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 285
    return-void
.end method

.method public launchAnr(Ljava/util/Map;)V
    .locals 12
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    if-eqz p1, :cond_0

    .line 305
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v6, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 312
    const-string v7, "BizCanNotUse"

    const-string v8, "BIZ_FRAME"

    const-string v9, "FRAME_CLIENT_STARTUP_DEAD"

    const-string v10, "1111"

    move-object v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 308
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 315
    return-void
.end method

.method public launchTime(JZ)V
    .locals 11
    .param p1, "launchTime"    # J
    .param p3, "isFirstStart"    # Z

    .line 257
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 258
    .local v2, "builder":Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;
    move-object v2, v0

    const-string/jumbo v3, "time_startup"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setSubType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 259
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 260
    xor-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 261
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "mp_baseline"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 262
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAUNCH:Ljava/lang/String;

    const-string/jumbo v3, "mp_module"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    .line 263
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->build()Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    move-result-object v0

    .line 264
    .local v0, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v10, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAUNCH:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 267
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v4

    invoke-direct {v7, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 269
    const-string/jumbo v9, "performance"

    invoke-static {v4, v9, v0, v1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/PerformanceRender;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 264
    invoke-interface {v3, v10}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 271
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V
    .locals 8
    .param p1, "performance"    # Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .param p2, "performanceId"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Map;
    .param p4, "bizType"    # Lcom/alipay/mobile/common/logging/api/BizType;
    .param p5, "sdkVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/logging/api/monitor/Performance;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/BizType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    if-nez p1, :cond_0

    .line 179
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bizType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", performanceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", performance can\'t be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MpaasLogger"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p4}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mp_module"

    invoke-virtual {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const-string/jumbo v0, "mp_version"

    invoke-virtual {p1, v0, p5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v7, Lcom/alipay/mobile/common/logging/api/LogEvent;

    .line 191
    invoke-virtual {p4}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 193
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getLoggerLevel()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->d:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 195
    invoke-static {v1, p2, p1, p3}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/PerformanceRender;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 190
    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 196
    return-void
.end method

.method public traffic(Ljava/util/Map;)V
    .locals 8
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 370
    if-eqz p1, :cond_0

    .line 371
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "mp_baseline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_TRAFFIC:Ljava/lang/String;

    const-string/jumbo v1, "mp_module"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_TRAFFIC:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->e:Lcom/alipay/mobile/common/logging/render/DiagnoseRender;

    .line 378
    const-string/jumbo v5, "traffic"

    const-string/jumbo v6, "size"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/alipay/mobile/common/logging/render/DiagnoseRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 374
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 380
    return-void
.end method

.method public userLogin(Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 217
    .local v1, "behavior":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    const-string v2, "login"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "mp_baseline"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    const-string/jumbo v2, "mp_module"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->b:Lcom/alipay/mobile/common/logging/api/LogContext;

    new-instance v8, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/impl/MpaasLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/BehavorRender;

    .line 227
    const-string v4, "event"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/common/logging/render/PendingRender;->a(Lcom/alipay/mobile/common/logging/render/BehavorRender;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alipay/mobile/common/logging/render/PendingRender;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/IRender;)V

    .line 222
    invoke-interface {v0, v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 229
    return-void
.end method
