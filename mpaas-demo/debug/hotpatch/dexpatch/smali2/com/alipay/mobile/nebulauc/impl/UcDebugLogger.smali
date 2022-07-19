.class public Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;
.super Ljava/lang/Object;
.source "UcDebugLogger.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetLogger;


# static fields
.field private static final LEVEL_DEBUG:I = 0x2

.field private static final LEVEL_ERROR:I = 0x0

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0xa

.field private static final LEVEL_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UcDebugLogger"


# instance fields
.field private mEnable:Z

.field private mLogLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    return-void
.end method

.method private static enableH5TraceLog()V
    .locals 4

    .line 54
    :try_start_0
    const-string v0, "com.alipay.mobile.nebula.data.H5Trace"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "h5TraceClass":Ljava/lang/Class;
    const-string v1, "sEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "sEnabledField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "h5TraceClass":Ljava/lang/Class;
    .end local v1    # "sEnabledField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UcDebugLogger"

    const-string v2, "enableH5TraceLog error!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static init()V
    .locals 6

    .line 33
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;-><init>()V

    .line 34
    .local v0, "logger":Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->setLogLevel(I)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->setEnable(Z)V

    .line 36
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->enableH5TraceLog()V

    .line 40
    const-string v3, "com.alipay.ipcperf.IpcPerfManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 41
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "hackConfigServiceLite"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 42
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 43
    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    nop

    .end local v0    # "logger":Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "UcDebugLogger"

    const-string v2, "init ucdebug logger error!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 93
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 80
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    if-gtz v0, :cond_0

    .line 81
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public getEnable()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 98
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mEnable:Z

    .line 73
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 64
    iput p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    .line 65
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 86
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->mLogLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 87
    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
