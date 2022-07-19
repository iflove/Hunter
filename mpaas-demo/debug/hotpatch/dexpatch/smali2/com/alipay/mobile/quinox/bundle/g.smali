.class public final Lcom/alipay/mobile/quinox/bundle/g;
.super Ljava/lang/Object;
.source "DelayUpdateBundles.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Z

    .line 50
    return-void
.end method

.method private static a(Ljava/io/File;)Landroid/util/Pair;
    .locals 11
    .param p0, "installDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "updateBundlePaths":Ljava/util/ArrayList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "removeBundleNames":Ljava/util/ArrayList;
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .local v3, "pair":Landroid/util/Pair;
    const-string v4, "DelayUpdateBundles"

    if-eqz v0, :cond_4

    .line 72
    new-instance v5, Ljava/io/File;

    const-string v6, "delayUpdateBundles.cfg"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, v6

    .line 74
    .local v7, "file":Ljava/io/File;
    move-object v7, v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    const/4 v5, 0x0

    .line 77
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v8

    .line 79
    .local v6, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    if-eqz v8, :cond_2

    .line 80
    const-string v8, "ub:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ","

    const/4 v10, 0x3

    if-eqz v8, :cond_1

    .line 81
    :try_start_1
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "bundlePaths":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    nop

    .end local v8    # "bundlePaths":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    const-string v8, "rb:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "bundleNames":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    nop

    .end local v8    # "bundleNames":[Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 92
    goto :goto_2

    .line 88
    :catchall_0
    move-exception v6

    .line 89
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "read "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v6    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v4

    invoke-static {v5}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 94
    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "file":Ljava/io/File;
    :cond_3
    goto :goto_2

    .line 95
    :cond_4
    const-string v5, "context is null."

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_2
    return-object v3
.end method

.method private a(Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/io/File;)V
    .locals 11
    .param p1, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p2, "mInstallDir"    # Ljava/io/File;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "canProcessUpdate":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 170
    .local v3, "processInfo":Lcom/alipay/mobile/common/logging/api/ProcessInfo;
    move-object v3, v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v1

    move-object v4, v2

    .line 174
    .local v4, "context":Landroid/content/Context;
    move-object v4, v1

    if-eqz v1, :cond_2

    .line 175
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v5, v2

    .line 176
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "dynamicrelease_killprocess_time"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v0, 0x1

    move-object v2, v5

    goto :goto_0

    .line 176
    :cond_1
    move-object v2, v5

    .line 181
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    if-eqz v0, :cond_8

    .line 182
    const-string v1, "DelayUpdateBundles"

    const-string v4, "start process delay update."

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v4, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/.delayUpdateBundles.lock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 185
    .local v4, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 186
    invoke-static {p2}, Lcom/alipay/mobile/quinox/bundle/g;->a(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v5

    .line 187
    .local v2, "delayUpdateBundles":Landroid/util/Pair;
    move-object v2, v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 188
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 189
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_3
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 192
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 193
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_4
    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    .line 196
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 197
    :cond_5
    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    iget-object v8, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Z

    .line 199
    new-instance v5, Ljava/io/File;

    const-string v6, "delayUpdateBundles.cfg"

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 200
    .local v5, "clearResult":Z
    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 201
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 202
    nop

    .end local v7    # "path":Ljava/lang/String;
    goto :goto_1

    .line 203
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delay update success, bundles:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cfg clear result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v2    # "delayUpdateBundles":Landroid/util/Pair;
    .end local v5    # "clearResult":Z
    :cond_7
    :goto_2
    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 209
    return-void

    .line 205
    :catchall_0
    move-exception v2

    .line 206
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "delay update failed."

    invoke-static {v1, v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 208
    :catchall_1
    move-exception v1

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1

    .line 211
    .end local v4    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :cond_8
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "installDir"    # Ljava/io/File;
    .param p1, "updateBundlePaths"    # Ljava/util/List;
    .param p2, "removeBundleNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "write "

    const-string v4, "DelayUpdateBundles"

    .line 111
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 112
    .local v6, "context":Landroid/content/Context;
    move-object v6, v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 113
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v7, "delayUpdateBundles.cfg"

    move-object/from16 v8, p0

    invoke-direct {v0, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v5

    .line 114
    .local v7, "file":Ljava/io/File;
    move-object v7, v0

    invoke-static {v0}, Lcom/seiginonakama/res/utils/FileUtils;->getTempFileFor(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 115
    .local v9, "tmpFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 117
    .local v10, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 118
    const-string v0, ","

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v5, "str":Ljava/lang/StringBuilder;
    move-object v5, v11

    const-string v12, "ub:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v11, "plugins_delay"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    .line 122
    .local v11, "delayDir":Ljava/io/File;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_5

    .line 123
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 125
    .local v13, "line":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v14, "updateBundleFile":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v15

    .line 127
    .local v1, "descFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 129
    invoke-static {v1}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 131
    :cond_2
    invoke-static {v14, v1}, Lcom/seiginonakama/res/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 133
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 134
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v12, v15, :cond_4

    .line 136
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v1    # "descFile":Ljava/io/File;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "updateBundleFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 139
    .end local v12    # "i":I
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->newLine()V

    .line 142
    .end local v5    # "str":Ljava/lang/StringBuilder;
    .end local v11    # "delayDir":Ljava/io/File;
    :cond_6
    if-eqz v2, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .restart local v5    # "str":Ljava/lang/StringBuilder;
    move-object v5, v1

    const-string v11, "rb:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_8

    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 147
    .local v11, "line":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v1, v12, :cond_7

    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local v11    # "line":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 154
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 155
    invoke-static {v7}, Lcom/seiginonakama/res/utils/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 157
    :cond_a
    invoke-static {v9, v7}, Lcom/seiginonakama/res/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_2
    invoke-static {v10}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 162
    :catchall_1
    move-exception v0

    invoke-static {v10}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 112
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "tmpFile":Ljava/io/File;
    .end local v10    # "bufferedWriter":Ljava/io/BufferedWriter;
    :cond_b
    move-object/from16 v8, p0

    .line 165
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "installDir"    # Ljava/lang/String;
    .param p1, "bundles"    # Ljava/util/List;
    .param p2, "removeBundleNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.delayUpdateBundles.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcom/alipay/mobile/quinox/bundle/g;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :try_start_0
    const-string v0, "com.alipay.mobile.framework.DescriptionManager"

    const-string v1, "createInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v6

    aput-object v6, v4, v5

    .line 219
    invoke-static {v0, v1, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    const-string v1, "updateDescriptionsFromMetaInfoCfg"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/Collection;

    aput-object v6, v4, v5

    const-class v6, Ljava/util/Collection;

    aput-object v6, v4, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    aput-object v5, v3, v2

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Z

    .line 227
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v7

    .line 225
    invoke-static {v0, v1, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "DelayUpdateBundles"

    const-string v2, "processFrameworkUpdate failed."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/io/File;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;
    .param p3, "installDir"    # Ljava/io/File;
    .param p4, "preInstall"    # Z

    .line 54
    if-eqz p4, :cond_0

    .line 55
    :try_start_0
    const-string v0, "plugins_delay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    .local v1, "delayDir":Ljava/io/File;
    invoke-static {v0}, Lcom/seiginonakama/res/utils/FileUtils;->cleanDirectory(Ljava/io/File;)V

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v2, "delayUpdateBundles.cfg"

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/seiginonakama/res/utils/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 58
    nop

    .end local v1    # "delayDir":Ljava/io/File;
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/quinox/bundle/g;->a(Lcom/alipay/mobile/quinox/bundle/BundleManager;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "DelayUpdateBundles"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
