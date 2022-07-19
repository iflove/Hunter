.class public Lcom/uc/webview/export/business/setup/o;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "U4Source"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:Lcom/uc/webview/export/business/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/uc/webview/export/business/setup/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    .line 179
    const-string v0, "_odex_ready"

    sput-object v0, Lcom/uc/webview/export/business/setup/o;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    .line 27
    new-instance v0, Lcom/uc/webview/export/business/a;

    invoke-direct {v0}, Lcom/uc/webview/export/business/a;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/o;)Lcom/uc/webview/export/business/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    return-object p0
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/o;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/business/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/business/setup/o;Lcom/uc/webview/export/internal/setup/l;)V
    .locals 3

    .line 22
    nop

    .line 12172
    const-string v0, "bo_dec_odex_cb"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ValueCallback;

    .line 12174
    if-eqz p0, :cond_1

    .line 12175
    nop

    .line 13160
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getEvent()Ljava/lang/String;

    move-result-object v0

    .line 13161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13162
    const-string v2, "event"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13163
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13164
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13165
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13167
    :cond_0
    sget-object p1, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "decompressAndODex bundle: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13168
    nop

    .line 12175
    invoke-interface {p0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 22
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 182
    :try_start_0
    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    nop

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 184
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/uc/webview/export/business/setup/o;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 189
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 195
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 197
    sget-object p0, Lcom/uc/webview/export/business/setup/o;->c:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    .line 201
    :cond_1
    goto :goto_0

    .line 200
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 32
    const-string v0, "VERIFY_POLICY"

    const-string v1, "bs_dec_od"

    const-string v2, ".run stat: "

    :try_start_0
    iget-object v3, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v4, Lcom/uc/webview/export/business/a$c;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 35
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->i()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "1"

    const-string v5, "process_private_data_dir_suffix"

    if-eqz v3, :cond_0

    .line 36
    :try_start_1
    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {v5, v4}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/uc/webview/export/business/setup/o;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/SDKFactory;->c(Landroid/content/Context;)V

    .line 44
    :cond_0
    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    if-eqz v3, :cond_2

    .line 47
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 48
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v3, Lcom/uc/webview/export/business/a$c;->d:J

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    sget-object v0, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 1012
    iget-wide v4, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 2012
    iget-wide v2, v0, Lcom/uc/webview/export/business/a;->a:J

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 56
    :cond_2
    :try_start_2
    const-string v3, "ucmZipFile"

    invoke-virtual {p0, v3}, Lcom/uc/webview/export/business/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    const-string v4, "bo_dec_root_dir"

    invoke-virtual {p0, v4}, Lcom/uc/webview/export/business/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    sget-object v5, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".run decFilePath: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " decRootDirPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    .line 63
    :cond_3
    invoke-static {v4, v3}, Lcom/uc/webview/export/business/setup/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 64
    const-string v0, "readyDecompressAndODex"

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v3, Lcom/uc/webview/export/business/a$c;->f:J

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 5012
    iget-wide v2, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 6012
    iget-wide v2, v0, Lcom/uc/webview/export/business/a;->a:J

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_4
    :try_start_3
    new-instance v5, Lcom/uc/webview/export/internal/setup/b;

    invoke-direct {v5}, Lcom/uc/webview/export/internal/setup/b;-><init>()V

    .line 70
    invoke-virtual {v5, p0}, Lcom/uc/webview/export/internal/setup/b;->setParent(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/setup/l;

    .line 71
    iget-object v6, p0, Lcom/uc/webview/export/business/setup/o;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_5

    .line 73
    iget-object v6, p0, Lcom/uc/webview/export/business/setup/o;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 74
    nop

    .line 75
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/uc/webview/export/business/setup/p;

    invoke-direct {v9, p0, v7}, Lcom/uc/webview/export/business/setup/p;-><init>(Lcom/uc/webview/export/business/setup/o;Ljava/util/Map$Entry;)V

    invoke-virtual {v5, v8, v9}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 82
    goto :goto_0

    .line 85
    :cond_5
    const-string v6, "exception"

    new-instance v7, Lcom/uc/webview/export/business/setup/s;

    invoke-direct {v7, p0}, Lcom/uc/webview/export/business/setup/s;-><init>(Lcom/uc/webview/export/business/setup/o;)V

    .line 86
    invoke-virtual {v5, v6, v7}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/internal/setup/l;

    const-string v7, "die"

    new-instance v8, Lcom/uc/webview/export/business/setup/r;

    invoke-direct {v8, p0}, Lcom/uc/webview/export/business/setup/r;-><init>(Lcom/uc/webview/export/business/setup/o;)V

    .line 95
    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/internal/setup/l;

    const-string v7, "setup"

    new-instance v8, Lcom/uc/webview/export/business/setup/q;

    invoke-direct {v8, p0, v4, v3}, Lcom/uc/webview/export/business/setup/q;-><init>(Lcom/uc/webview/export/business/setup/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v6, v7, v8}, Lcom/uc/webview/export/internal/setup/l;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 125
    iget-object v3, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v6, Lcom/uc/webview/export/business/a$c;->b:J

    invoke-virtual {v3, v6, v7}, Lcom/uc/webview/export/business/a;->a(J)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/business/setup/o;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 128
    const-string v4, "sc_vrfplc"

    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    const-string v6, "sc_vrfaha"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v7, -0x3fffff81    # -2.0000303f

    if-eqz v6, :cond_6

    .line 130
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 131
    :cond_6
    const-string v6, "sc_vrfahs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 136
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/uc/webview/export/business/setup/o;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    invoke-virtual {v5, v4}, Lcom/uc/webview/export/internal/setup/l;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/internal/setup/l;

    .line 138
    invoke-virtual {v4, v0, v3}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "dexFilePath"

    .line 139
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "soFilePath"

    .line 140
    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "resFilePath"

    .line 141
    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "ucmCfgFile"

    .line 142
    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "ucmKrlDir"

    .line 143
    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "sdk_setup"

    .line 144
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->i()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "chkMultiCore"

    .line 145
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/l;

    const-string v3, "bo_enable_load_class"

    .line 146
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 149
    iput-object v4, p0, Lcom/uc/webview/export/business/setup/o;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    invoke-virtual {v5}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    sget-object v0, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 7012
    iget-wide v4, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 8012
    iget-wide v2, v0, Lcom/uc/webview/export/business/a;->a:J

    .line 155
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 60
    :cond_9
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v3, Lcom/uc/webview/export/business/a$c;->e:J

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 3012
    iget-wide v2, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 4012
    iget-wide v2, v0, Lcom/uc/webview/export/business/a;->a:J

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    sget-wide v3, Lcom/uc/webview/export/business/a$c;->c:J

    invoke-virtual {v0, v3, v4}, Lcom/uc/webview/export/business/a;->a(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    sget-object v0, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 9012
    iget-wide v4, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 10012
    iget-wide v2, v0, Lcom/uc/webview/export/business/a;->a:J

    goto :goto_3

    .line 154
    :catchall_1
    move-exception v0

    sget-object v3, Lcom/uc/webview/export/business/setup/o;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 11012
    iget-wide v5, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 154
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/uc/webview/export/business/setup/o;->b:Lcom/uc/webview/export/business/a;

    .line 12012
    iget-wide v2, v2, Lcom/uc/webview/export/business/a;->a:J

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
