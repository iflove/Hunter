.class public abstract Lcom/alipay/mobile/common/logging/CrashBridge;
.super Ljava/lang/Object;
.source "CrashBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "callStack"    # Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static declared-synchronized bind()V
    .locals 4

    const-class v0, Lcom/alipay/mobile/common/logging/CrashBridge;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 28
    :try_start_1
    const-string v1, "com.alipay.mobile.common.logging.CrashBridgeImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    sput-object v1, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .end local v2    # "clazz":Ljava/lang/Class;
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "CrashBridge"

    const-string v3, "CrashBridge.init error!!!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .end local v1    # "tr":Ljava/lang/Throwable;
    :cond_0
    monitor-exit v0

    return-void

    .line 25
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static createExceptionHandler(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->createExceptionHandler(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->deleteFileByPath(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static getCrashTime()J
    .locals 2

    .line 81
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getCrashTime()J

    move-result-wide v0

    return-wide v0

    .line 84
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 150
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getExternalExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getLastNebulaXCrashInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "exception"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getNativeCrashClientStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ex"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getNativeCrashInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProcessAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->getProcessAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initExceptionHandler(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->initExceptionHandler(Landroid/content/Context;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static isANRCrash(Ljava/lang/String;)Z
    .locals 5
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    return v1

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 219
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    const/4 v2, 0x0

    .line 221
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v2, "line":Ljava/lang/String;
    move-object v2, v3

    if-eqz v3, :cond_2

    .line 225
    const-string/jumbo v3, "signal 6 (SIGABRT)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    const-string v3, "killed by pid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "comm: system_server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    .line 237
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    goto :goto_1

    .line 238
    :catchall_0
    move-exception v1

    .line 229
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 231
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 237
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    :goto_2
    goto :goto_3

    .line 238
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 232
    :catchall_2
    move-exception v2

    .line 233
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "CrashBridge"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 235
    .end local v2    # "tr":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 237
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 242
    :cond_3
    :goto_3
    return v1

    .line 235
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    .line 237
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 239
    goto :goto_4

    .line 238
    :catchall_4
    move-exception v2

    .line 239
    :cond_4
    :goto_4
    throw v1
.end method

.method public static isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "comp"    # Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->isBackgroundLaunch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isForkedCrashOnlyForTracing(Ljava/lang/String;)Z
    .locals 10
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "bool_1":Z
    const/4 v3, 0x0

    .line 172
    .local v3, "bool_2":Z
    const/4 v4, 0x0

    .line 173
    .local v4, "bool_3":Z
    const/4 v5, 0x0

    .line 174
    .local v5, "bool_4":Z
    const/4 v6, 0x0

    .local v6, "willBreak":Z
    const/4 v7, 0x0

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v7, "line":Ljava/lang/String;
    move-object v7, v8

    if-eqz v8, :cond_7

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, "_willBreak":Z
    const-string v9, "[DEBUG] Current process is forked from"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 182
    const/4 v2, 0x1

    goto :goto_1

    .line 183
    :cond_1
    const-string v9, "Process Name: \'com.eg.android.AlipayGphone\'"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 184
    const/4 v3, 0x1

    goto :goto_1

    .line 185
    :cond_2
    const-string v9, "Thread Name: \'DFSDump\'"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    const/4 v4, 0x1

    goto :goto_1

    .line 187
    :cond_3
    const-string v9, "forked from pid:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 188
    const/4 v5, 0x1

    goto :goto_1

    .line 189
    :cond_4
    const-string v9, ">>>"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "<<<"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_5

    .line 190
    const/4 v8, 0x1

    .line 192
    :cond_5
    :goto_1
    if-nez v6, :cond_7

    .line 195
    if-eqz v8, :cond_6

    .line 196
    const/4 v6, 0x1

    .line 198
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "_willBreak":Z
    :cond_6
    goto :goto_0

    .line 199
    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    const/4 v1, 0x1

    .line 206
    :cond_8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    goto :goto_2

    .line 207
    :catchall_0
    move-exception v7

    .line 199
    :goto_2
    return v1

    .line 200
    .end local v2    # "bool_1":Z
    .end local v3    # "bool_2":Z
    .end local v4    # "bool_3":Z
    .end local v5    # "bool_4":Z
    .end local v6    # "willBreak":Z
    :catchall_1
    move-exception v2

    .line 201
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "CrashBridge"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 204
    if-eqz v0, :cond_9

    .line 206
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 208
    goto :goto_3

    .line 207
    :catchall_2
    move-exception v3

    .line 202
    :cond_9
    :goto_3
    return v1

    .line 204
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_a

    .line 206
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 208
    goto :goto_4

    .line 207
    :catchall_4
    move-exception v2

    .line 208
    :cond_a
    :goto_4
    throw v1
.end method

.method public static isIgnoreCrash(Ljava/lang/String;)I
    .locals 1
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->isIgnoreCrash(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 146
    :cond_0
    const/16 v0, 0xb

    return v0
.end method

.method public static isKnownInvalidCrash(Ljava/lang/String;)Z
    .locals 1
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->isKnownInvalidCrash(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPotentialBackgroundCrash(Ljava/lang/String;)Z
    .locals 1
    .param p0, "exception"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->isPotentialBackgroundCrash(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "crashInfo"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callStack"    # Ljava/lang/String;
    .param p3, "isReturnJVM"    # Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public static setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 1
    .param p0, "callback"    # Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .param p1, "flag"    # I

    .line 49
    sget-object v0, Lcom/alipay/mobile/common/logging/CrashBridge;->a:Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/common/logging/CrashBridge$ICrashBridge;->setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V

    .line 52
    :cond_0
    return-void
.end method
