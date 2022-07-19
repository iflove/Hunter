.class public Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;
.super Ljava/lang/Object;
.source "NativeCrashHandlerApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;,
        Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;,
        Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;
    }
.end annotation


# static fields
.field public static final CAT_LAST_PRODUCT_INFO:Ljava/lang/String; = "last product info:"

.field public static final FILE_PATH:Ljava/lang/String; = "app_crash"

.field public static final KEY_LAST_RUNTIME_CODE_PATH:Ljava/lang/String; = "LastRuntimeCodePath"

.field public static final KEY_LAST_RUNTIME_VERSION:Ljava/lang/String; = "LastRuntimeVersion"

.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

.field private static c:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:I

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Z

.field public static sLastCodePath:Ljava/lang/String;

.field public static sLastRunningProductVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "NativeCrashHandlerApi"

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastRunningProductVersion:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastCodePath:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->f:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .line 232
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;

    monitor-enter v0

    .line 236
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 237
    monitor-exit v0

    return-void

    .line 239
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->b:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v2, 0x0

    .line 175
    .local v2, "api":Lcom/uc/crashsdk/export/CrashApi;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v2, p0, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "nebulax"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->markNebulaXEnable()V

    .line 180
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCrashHeadInfo success, key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addCrashHeadInfo failed, CrashApi is null, key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return v1

    .line 187
    .end local v2    # "api":Lcom/uc/crashsdk/export/CrashApi;
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->f:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addCrashHeadInfo failed, crashGetter is null, key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v1
.end method

.method public static addParams()V
    .locals 5

    .line 221
    const/4 v0, 0x0

    .local v0, "temp":Ljava/util/Map;
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 222
    move-object v0, v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    .local v2, "key":Ljava/lang/String;
    move-object v2, v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->setForeground(Z)V

    .line 228
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 229
    return-void
.end method

.method public static enableJavaAndUnexpLog()V
    .locals 6

    .line 352
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.common.nativecrash.NativeCrashHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 353
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v1

    :try_start_1
    const-string v3, "ENANBLE_JAVA_LOG"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 354
    .local v1, "enanble_java_log":Ljava/lang/reflect/Field;
    const-string v3, "ENABLE_UNEXP_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 355
    .local v3, "enanble_unexp_log":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v1    # "enanble_java_log":Ljava/lang/reflect/Field;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "enanble_unexp_log":Ljava/lang/reflect/Field;
    return-void

    .line 357
    :catchall_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 358
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "enableJavaAndUnexpLog error."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static generateTraces(Ljava/lang/String;J)Z
    .locals 3
    .param p0, "filePathName"    # Ljava/lang/String;
    .param p1, "maxWaitMillSeconds"    # J

    .line 325
    sget-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 326
    return v1

    .line 328
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v2, 0x0

    .line 329
    .local v2, "crashApi":Lcom/uc/crashsdk/export/CrashApi;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 330
    return v1

    .line 332
    :cond_1
    invoke-virtual {v2, p0, p1, p2}, Lcom/uc/crashsdk/export/CrashApi;->generateTraces(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static getCrashApi()Lcom/uc/crashsdk/export/CrashApi;
    .locals 5

    .line 194
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->b:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    invoke-interface {v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    move-object v2, v1

    .line 196
    .local v2, "api":Lcom/uc/crashsdk/export/CrashApi;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 197
    return-object v2

    .line 199
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v4, "getCrashApi failed, api is null"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v2    # "api":Lcom/uc/crashsdk/export/CrashApi;
    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "getCrashApi failed, crashGetter is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-object v1
.end method

.method public static getCrashGetter()Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;
    .locals 1

    .line 213
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->b:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 336
    sget-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v2, "already initialized."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.alipay.mobile.common.nativecrash.NativeCrashHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 342
    const-string v2, "initialize"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 343
    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    goto :goto_0

    .line 344
    :catchall_0
    move-exception v1

    .line 345
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "initialize error."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    .line 348
    return-void
.end method

.method public static onExit()V
    .locals 4

    .line 127
    sget-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v1, 0x0

    .line 131
    .local v1, "api":Lcom/uc/crashsdk/export/CrashApi;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 132
    sget v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 133
    return-void

    .line 135
    :cond_1
    invoke-virtual {v1}, Lcom/uc/crashsdk/export/CrashApi;->onExit()V

    .line 136
    sput v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v3, "onExit"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v3, "onExit failed, crashApi is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "flush applog"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "applog"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "flush applog done"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 283
    const-string v0, " spend, ReportCrashListener.onReportCrash: "

    const-string v1, " spend, OnNativeCrashUploadListener.onUpload"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v4, "onReportCrash"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->c:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;

    if-eqz v2, :cond_0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    :try_start_0
    sget-object v4, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->c:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;

    invoke-interface {v4, p0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;->onUpload(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 291
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    goto :goto_0

    .line 293
    :catchall_0
    move-exception v4

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 295
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :cond_0
    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 302
    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;

    .line 307
    move-object v7, v5

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    move v11, p3

    :try_start_1
    invoke-interface/range {v6 .. v11}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 310
    sub-long v1, v6, v1

    .line 311
    nop

    .line 312
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v8, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    move-wide v1, v6

    goto :goto_1

    .line 314
    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v4

    move-wide v6, v1

    move-object v1, v4

    .line 315
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 316
    sub-long v6, v8, v6

    .line 317
    nop

    .line 318
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    move-wide v1, v8

    goto :goto_1

    .line 322
    :cond_1
    return-void
.end method

.method public static putReportCrashListener(Ljava/lang/String;Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;)Z
    .locals 5
    .param p0, "bizKey"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;

    .line 244
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a()V

    .line 250
    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "putReportCrashListener, exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return v0

    .line 255
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "putReportCrashListener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_2
    :goto_0
    return v0
.end method

.method public static removeReportCrashListener(Ljava/lang/String;)Z
    .locals 5
    .param p0, "bizKey"    # Ljava/lang/String;

    .line 262
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$ReportCrashListener;

    .line 268
    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeReportCrashListener, not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return v1

    .line 273
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeReportCrashListener: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_2
    :goto_0
    return v1
.end method

.method public static setCrashGetter(Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;)V
    .locals 0
    .param p0, "crashGetter"    # Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

    .line 217
    sput-object p0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->b:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$NativeCrashApiGetter;

    .line 218
    return-void
.end method

.method public static setForeground(Z)V
    .locals 6
    .param p0, "isForeground"    # Z

    .line 96
    sget-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    .local v1, "api":Lcom/uc/crashsdk/export/CrashApi;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 101
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    if-eq v3, v0, :cond_2

    :cond_1
    if-nez p0, :cond_3

    sget v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    if-nez v3, :cond_3

    .line 103
    :cond_2
    return-void

    .line 105
    :cond_3
    invoke-virtual {v1, p0}, Lcom/uc/crashsdk/export/CrashApi;->setForeground(Z)V

    .line 106
    if-eqz p0, :cond_4

    .line 107
    sput v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    goto :goto_0

    .line 109
    :cond_4
    sput v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->e:I

    .line 111
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setForeground: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v4, "setForeground failed, crashApi is null"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v4, "flush applog"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string v3, "applog"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Ljava/lang/String;Z)V

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string v3, "flush applog done"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static setLastCodePath(Ljava/lang/String;)V
    .locals 4
    .param p0, "lastCodePath"    # Ljava/lang/String;

    .line 162
    sput-object p0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastCodePath:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLastCodePath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastCodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static setLastRunningProductVersion(Ljava/lang/String;)V
    .locals 4
    .param p0, "lastVersion"    # Ljava/lang/String;

    .line 153
    sput-object p0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastRunningProductVersion:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLastRunningProductVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->sLastRunningProductVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setNewInstall()V
    .locals 4

    .line 79
    sget-boolean v0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->h:Z

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->getCrashApi()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    .local v1, "api":Lcom/uc/crashsdk/export/CrashApi;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/uc/crashsdk/export/CrashApi;->setNewInstall()V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v3, "setNewInstall"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->a:Ljava/lang/String;

    const-string/jumbo v3, "setNewInstall failed, crashApi is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static setOnNativeCrashUploadListener(Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;

    .line 209
    sput-object p0, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->c:Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi$OnNativeCrashUploadListener;

    .line 210
    return-void
.end method
