.class public Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/FileAppender;
.source "MdapFileAppender.java"


# static fields
.field protected static final e:Ljava/lang/String;


# instance fields
.field protected f:Ljava/io/File;

.field protected g:Ljava/io/File;

.field protected h:I

.field protected i:I

.field protected j:Z

.field protected k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

.field protected l:I

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mdap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;
    .param p2, "logCategory"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/FileAppender;-><init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->j:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 40
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    .line 41
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->n:Z

    .line 45
    return-void
.end method

.method private a(ZLjava/io/File;)V
    .locals 2
    .param p1, "mmap"    # Z
    .param p2, "logcache"    # Ljava/io/File;

    .line 284
    new-instance v0, Lcom/alipay/mobile/common/logging/io/LogBuffer;

    const v1, 0x8000

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;-><init>(ZLjava/io/File;I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    .line 285
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->getLength()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 286
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 148
    if-eqz p1, :cond_1

    const-string/jumbo v0, "needMove"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 151
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f()Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "Appender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appender flush move "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 159
    :goto_0
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 161
    :cond_1
    return-void
.end method

.method private declared-synchronized e()V
    .locals 7

    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 239
    monitor-exit p0

    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->n:Z

    .line 243
    const-string v1, "LogMonitor"

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getLogStrategyInfo(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    move-result-object v1

    move-object v3, v2

    .line 245
    .local v3, "info":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->getThreshold()I

    move-result v1

    const/16 v4, 0x13

    if-ne v1, v4, :cond_2

    .line 246
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    goto :goto_0

    .line 243
    .end local v3    # "info":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
    :cond_1
    move-object v3, v2

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v1

    .line 250
    .local v3, "logcache":Ljava/io/File;
    move-object v3, v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_4

    .line 251
    :cond_3
    iput-boolean v4, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    .line 254
    :cond_4
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    if-eqz v1, :cond_9

    .line 255
    const-string/jumbo v1, "mmapsucc"

    .line 256
    .local v1, "mmapSuccess":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    if-nez v5, :cond_5

    .line 257
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(ZLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 260
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v6, v2

    .line 261
    .local v6, "defaultsp":Landroid/content/SharedPreferences;
    move-object v6, v5

    if-nez v5, :cond_6

    .line 262
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(ZLjava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 265
    :cond_6
    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 266
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v2, v5

    if-nez v5, :cond_7

    .line 267
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(ZLjava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 270
    :cond_7
    :try_start_4
    invoke-interface {v6, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    .line 271
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->m:Z

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(ZLjava/io/File;)V

    .line 273
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 275
    :cond_8
    :try_start_5
    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(ZLjava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    .end local v1    # "mmapSuccess":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "defaultsp":Landroid/content/SharedPreferences;
    monitor-exit p0

    return-void

    .line 278
    :cond_9
    :try_start_6
    new-instance v0, Lcom/alipay/mobile/common/logging/io/LogBuffer;

    const v1, 0x8000

    invoke-direct {v0, v4, v3, v1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;-><init>(ZLjava/io/File;I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 237
    .end local v3    # "logcache":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Ljava/io/File;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 290
    .local v0, "uploadDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 296
    .local v2, "uploadName":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getMdapStyleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .end local v2    # "uploadName":Ljava/lang/String;
    .local v1, "uploadName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    return-object v2
.end method

.method private g()Ljava/io/File;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Landroid/content/Context;

    const-string/jumbo v1, "mdap"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 303
    .local v0, "backupDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "upload"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 309
    .local v2, "backupName":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getMdapStyleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .end local v2    # "backupName":Ljava/lang/String;
    .local v1, "backupName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    return-object v2
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 165
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e()V

    .line 130
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    if-lez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appender flush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local p0    # "this":Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->needEncrypt(Ljava/lang/String;)Z

    move-result v0

    .line 138
    .local v0, "isEncrypt":Z
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Z)Z

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->setLength(I)V

    .line 140
    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    iget v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 141
    iput v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    .line 142
    iput v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 143
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 128
    .end local v0    # "isEncrypt":Z
    .end local p1    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 7

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->acceptTimeTicksMadly()V

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e()V

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "\\$\\$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    :try_start_2
    const-string v2, "Appender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " first append: [just check, not a real error] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogAppenderistener()Lcom/alipay/mobile/common/logging/api/LogAppenderistener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/logging/api/LogAppenderistener;->onLogAppend(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 70
    const-wide/16 v2, 0x3e8

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "Appender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\n\n\nexternal appender listener spend too much time: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    const v2, 0x8000

    if-lt v0, v2, :cond_3

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->needEncrypt(Ljava/lang/String;)Z

    move-result v0

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Z)Z

    .line 80
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    iget v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->setLength(I)V

    .line 82
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    .line 83
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 87
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->needEncrypt(Ljava/lang/String;)Z

    move-result v0

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Z)Z

    .line 90
    iget p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->append(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    .line 94
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 106
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    invoke-static {}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->isMonitorBackground()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_5

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {p1, v0, v2, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogUpload(Ljava/lang/String;ILcom/alipay/mobile/common/logging/api/LogContext;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 111
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->needEncrypt(Ljava/lang/String;)Z

    move-result p1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Z)Z

    .line 113
    iget p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 114
    iget-object p1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->k:Lcom/alipay/mobile/common/logging/io/LogBuffer;

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/logging/io/LogBuffer;->setLength(I)V

    .line 115
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->i:I

    .line 116
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->l:I

    .line 119
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    invoke-virtual {p1, v0, v2, v3}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isLogUpload(Ljava/lang/String;ILcom/alipay/mobile/common/logging/api/LogContext;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 120
    const-string p1, "Appender"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "maxLogCount,upload: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v0, "event"

    const-string/jumbo v2, "maxLogCount"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 124
    iput v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :cond_7
    monitor-exit p0

    return-void

    .line 48
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uploadUrl"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 323
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    if-nez v0, :cond_0

    .line 324
    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    .line 331
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    .line 339
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 342
    goto :goto_1

    .line 340
    :catchall_1
    move-exception v0

    .line 346
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->h:I

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 351
    return-void

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    const-string v3, "Appender"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected final declared-synchronized a(Z)V
    .locals 0
    .param p1, "isBackupOthers"    # Z

    monitor-enter p0

    .line 171
    monitor-exit p0

    return-void
.end method

.method protected final c()Ljava/io/File;
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/io/File;

    const-string v1, "_"

    const-string/jumbo v2, "mdap"

    const-string v3, "getFile"

    const-string v4, "Appender"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "mdapLogDir":Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 183
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v5

    .line 182
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 186
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    goto :goto_1

    .line 190
    :catchall_1
    move-exception v5

    .line 191
    .restart local v5    # "t":Ljava/lang/Throwable;
    invoke-static {v4, v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v0    # "mdapLogDir":Ljava/io/File;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/io/File;

    if-nez v0, :cond_3

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .restart local v0    # "mdapLogDir":Ljava/io/File;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    :cond_2
    goto :goto_2

    .line 202
    :catchall_2
    move-exception v2

    .line 203
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/io/File;

    .line 208
    .end local v0    # "mdapLogDir":Ljava/io/File;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/io/File;

    return-object v0
.end method

.method protected final d()Ljava/io/File;
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:Ljava/io/File;

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 215
    .local v2, "fileDir":Ljava/io/File;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 216
    return-object v1

    .line 218
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".logbuffer"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .local v0, "logs":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_1
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    .line 227
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "Appender"

    const-string v4, "getCacheFile"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logbuffer_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:Ljava/io/File;

    .line 231
    .end local v0    # "logs":Ljava/io/File;
    .end local v2    # "fileDir":Ljava/io/File;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:Ljava/io/File;

    return-object v0
.end method
