.class public Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
.super Ljava/lang/Object;
.source "ExceptionCollector.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    .line 58
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 366
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "logging_avail_analysis"

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 370
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 372
    :catchall_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExceptionCollector"

    const-string/jumbo v3, "readAndParseStrategy"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Z)Ljava/util/List;
    .locals 8
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;",
            ">;"
        }
    .end annotation

    const-string v0, "ExceptionCollector"

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    goto :goto_0

    .line 302
    :cond_0
    if-nez p1, :cond_1

    .line 303
    return-object v1

    .line 306
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 307
    .local v3, "sp":Landroid/content/SharedPreferences;
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 308
    const-string v1, "exceptions"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "exceptionString":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getExceptions: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 312
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, "exceptionArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 314
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 315
    .local v6, "object":Lorg/json/JSONObject;
    new-instance v7, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    invoke-direct {v7}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;-><init>()V

    .line 316
    .local v2, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    move-object v2, v7

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->parse(Lorg/json/JSONObject;)V

    .line 317
    iget-object v7, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    nop

    .end local v2    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    .end local v6    # "object":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "exceptionString":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "exceptionArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    goto :goto_2

    .line 321
    :catchall_0
    move-exception v1

    .line 322
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 6
    .param p0, "exceptionList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "ExceptionCollector"

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "reportUnAvail but exceptions is empty"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "reportUnAvail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v0, "extParams":Ljava/util/Map;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 235
    .local v1, "exceptionArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    .line 236
    .local v3, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 237
    .end local v3    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exceptions"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    const-string v3, "BIZ_FRAME"

    const-string v4, "CONT_UNAVAIL"

    const-string v5, "1000"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 6
    .param p1, "newExceptionList"    # Ljava/util/List;
    .param p2, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ExceptionCollector"

    .line 334
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    if-eq v1, p1, :cond_0

    .line 335
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 336
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 341
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 342
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 344
    .local v1, "exceptionArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    .line 345
    .local v4, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    nop

    .end local v4    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    goto :goto_0

    .line 347
    :cond_1
    const-string v3, "exceptions"

    if-eqz p2, :cond_2

    .line 348
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 350
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateExceptions: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .end local v1    # "exceptionArray":Lorg/json/JSONArray;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    return-void

    .line 354
    :catchall_0
    move-exception v1

    .line 355
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .param p1, "newLaunchTimes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ExceptionCollector"

    .line 271
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    if-eq v1, p1, :cond_0

    .line 272
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v1

    if-eqz v1, :cond_3

    .line 279
    const-string v1, ""

    .line 280
    .local v1, "launchTimes":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 282
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 280
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "launchTimes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateLaunchTimes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v1    # "launchTimes":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    return-void

    .line 289
    :catchall_0
    move-exception v1

    .line 290
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a:Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a:Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a:Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a:Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearException(Ljava/lang/String;)V
    .locals 6
    .param p1, "exceptionType"    # Ljava/lang/String;

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ExceptionCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->isValidExceptionType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "shouldUpdate":Z
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 205
    .local v2, "exceptionList":Ljava/util/List;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    .line 209
    .local v4, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getExceptionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 211
    const/4 v0, 0x1

    .line 213
    .end local v4    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    :cond_2
    goto :goto_0

    .line 215
    :cond_3
    if-eqz v0, :cond_4

    .line 218
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v0    # "shouldUpdate":Z
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "exceptionList":Ljava/util/List;
    :cond_4
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExceptionCollector"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 195
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
    .end local p1    # "exceptionType":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLaunchTimes()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "ExceptionCollector"

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    return-object v0

    .line 250
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 251
    .local v3, "sp":Landroid/content/SharedPreferences;
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 252
    const-string v1, "launchTimes"

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "launchTimes":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getLaunchTimes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "launchTimeSplit":[Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 256
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 257
    .local v2, "launchTime":Ljava/lang/String;
    move-object v2, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 260
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 261
    .local v7, "launchTimeLong":J
    iget-object v9, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v2    # "launchTime":Ljava/lang/String;
    .end local v7    # "launchTimeLong":J
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "launchTimes":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "launchTimeSplit":[Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 264
    :catchall_0
    move-exception v1

    .line 265
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized recordException(Ljava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # Ljava/lang/String;

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ExceptionCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->isValidExceptionType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getLaunchTimes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    .local v1, "launchTimes":Ljava/util/List;
    move-object v1, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_1

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 101
    .local v2, "newestLaunchTime":J
    invoke-virtual {p0, p1, v2, v3}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->recordException(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v1    # "launchTimes":Ljava/util/List;
    .end local v2    # "newestLaunchTime":J
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExceptionCollector"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
    .end local p1    # "exceptionType":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordException(Ljava/lang/String;J)V
    .locals 19
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "clientLaunchTime"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    monitor-enter p0

    .line 110
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_b

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->isValidExceptionType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 113
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcessExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v6, v5

    .line 116
    .local v6, "intent":Landroid/content/Intent;
    move-object v6, v0

    iget-object v7, v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    const-string v8, "com.alipay.mobile.common.logging.process.LogServiceInMainProcess"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v0, "ExceptionCollector_recordException"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v5, "extras":Landroid/os/Bundle;
    move-object v5, v0

    const-string v7, "exceptionType"

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "clientLaunchTime"

    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 122
    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->d:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    nop

    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "intent":Landroid/content/Intent;
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;-><init>()V

    move-object v6, v5

    .line 126
    .local v6, "newExceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    move-object v6, v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->setExceptionType(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v6, v3, v4}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->setClientLaunchTime(J)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v7, "ExceptionCollector"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "recordException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getExceptionType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " launchTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getClientLaunchTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    .line 133
    .local v7, "newExceptionList":Ljava/util/List;
    move-object v7, v0

    const/4 v8, 0x1

    invoke-direct {v1, v8}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getLaunchTimes()Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "launchTimes":Ljava/util/List;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v9, "unAvailExceptions":Ljava/util/List;
    const/4 v10, 0x0

    .line 143
    .local v10, "sum":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    .line 144
    .local v11, "counts":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 145
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    .line 146
    .local v5, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    move-object v5, v14

    invoke-virtual {v14}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getClientLaunchTime()J

    move-result-wide v14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    sub-int v16, v16, v12

    add-int/lit8 v2, v16, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v2, v14, v16

    if-nez v2, :cond_2

    .line 147
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    aget v2, v11, v12

    add-int/2addr v2, v8

    aput v2, v11, v12

    .line 150
    .end local v5    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    :cond_2
    move-object/from16 v2, p1

    goto :goto_1

    .line 151
    :cond_3
    aget v2, v11, v12

    if-lez v2, :cond_4

    .line 152
    aget v2, v11, v12

    add-int/2addr v10, v2

    .line 153
    goto :goto_3

    .line 155
    :cond_4
    const/4 v2, 0x0

    .line 156
    .local v2, "tempSum":I
    array-length v5, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_5

    aget v14, v11, v13

    .line 157
    .local v14, "count":I
    add-int/2addr v2, v14

    .line 156
    .end local v14    # "count":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 159
    :cond_5
    if-gtz v2, :cond_6

    move-object v5, v11

    .line 144
    .end local v2    # "tempSum":I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    goto :goto_0

    .line 165
    .end local v12    # "i":I
    :cond_6
    const/4 v2, 0x3

    if-lt v10, v2, :cond_7

    .line 166
    invoke-static {v9}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Ljava/util/List;)V

    .line 167
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 171
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "validExceptionList":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;

    .line 174
    .local v12, "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 175
    .local v14, "launchTime":J
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;->getClientLaunchTime()J

    move-result-wide v16

    cmp-long v18, v16, v14

    if-nez v18, :cond_8

    .line 176
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v14    # "launchTime":J
    :cond_8
    goto :goto_5

    .line 179
    .end local v12    # "exceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    :cond_9
    goto :goto_4

    .line 182
    :cond_a
    invoke-direct {v1, v2, v8}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->a(Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v0    # "launchTimes":Ljava/util/List;
    .end local v2    # "validExceptionList":Ljava/util/List;
    .end local v6    # "newExceptionData":Lcom/alipay/mobile/common/logging/util/avail/ExceptionData;
    .end local v7    # "newExceptionList":Ljava/util/List;
    .end local v9    # "unAvailExceptions":Ljava/util/List;
    .end local v10    # "sum":I
    .end local v11    # "counts":[I
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v5, "ExceptionCollector"

    invoke-interface {v2, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 109
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "clientLaunchTime":J
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    .restart local p1    # "type":Ljava/lang/String;
    .restart local p2    # "clientLaunchTime":J
    :cond_b
    :goto_6
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized recordNewLaunchTime(J)V
    .locals 4
    .param p1, "launchTime"    # J

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ExceptionCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordNewLaunchTime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 70
    .local v1, "newLaunchTimes":Ljava/util/List;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->getLaunchTimes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "newLaunchTimes":Ljava/util/List;
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExceptionCollector"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .end local v0    # "tr":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/util/avail/ExceptionCollector;
    .end local p1    # "launchTime":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
