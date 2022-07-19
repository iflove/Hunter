.class public Lcom/alipay/mobile/quinox/bundle/BundleUpdate;
.super Ljava/lang/Object;
.source "BundleUpdate.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BundleUpdate"

.field public static final UPDATE_CFG:Ljava/lang/String; = "update.cfg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ljava/util/Set;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter v0

    .line 94
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v1, "updateBundleKeys":Ljava/util/Set;
    new-instance v2, Ljava/io/File;

    const-string v3, "plugins"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const-string v4, "update.cfg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 97
    .local v4, "file":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_2

    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    move-object v2, v6

    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v6

    move-object v7, v3

    .line 103
    .local v7, "bundleKeys":Ljava/util/List;
    move-object v7, v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 104
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 107
    .local v6, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 109
    .local v3, "bundleKey":Ljava/lang/String;
    move-object v3, v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    const-string v8, "BundleUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "remove bad bundle key:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v3    # "bundleKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 118
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "iterator":Ljava/util/Iterator;
    .end local v7    # "bundleKeys":Ljava/util/List;
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "BundleUpdate"

    invoke-static {v5, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .end local v3    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 119
    :goto_1
    goto :goto_2

    .line 118
    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v3

    .line 122
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_2
    const-string v2, "BundleUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Read BundleUpdate(Key): "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->updateUpdateBundleKeysToLog(Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    monitor-exit v0

    return-object v1

    .line 93
    .end local v1    # "updateBundleKeys":Ljava/util/Set;
    .end local v4    # "file":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/util/Set;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateBundleKeys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter v0

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "size":I
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 149
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    .local v3, "bundleKey":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 154
    .end local v3    # "bundleKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    move v1, v3

    .line 158
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_2
    new-array v2, v1, [Ljava/lang/String;

    .line 159
    .local v2, "_updateBundleKeys":[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 160
    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    :cond_3
    const/4 v3, 0x0

    .line 164
    .local v3, "result":Z
    new-instance v4, Ljava/io/File;

    const-string v5, "plugins"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string v6, "update.cfg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 165
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 167
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 168
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 169
    move-object v5, v7

    invoke-static {v7, v2}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringArray2(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v3, 0x1

    .line 176
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "BundleUpdate"

    invoke-static {v7, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    .end local v6    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 177
    :goto_1
    nop

    .line 178
    const-string v6, "BundleUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write BundleUpdate(result="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {v6, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->updateUpdateBundleKeysToLog(Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 182
    monitor-exit v0

    return-void

    .line 176
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 145
    .end local v1    # "size":I
    .end local v2    # "_updateBundleKeys":[Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "updateBundleKeys":Ljava/util/Set;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getReusableBundleCombinations(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "combinations":Ljava/util/List;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/k;->a(Landroid/content/Context;)Lcom/alipay/mobile/quinox/bundle/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/k;->a()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 218
    .local v2, "reusableBundleMap":Ljava/util/Map;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    move-object v0, v1

    new-instance v3, Lcom/alipay/mobile/quinox/bundle/BundleUpdate$1;

    invoke-direct {v3}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate$1;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getReusableBundleCombinations: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleUpdate"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v0
.end method

.method public static getReusableBundleKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "set":Ljava/util/Set;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/k;->a(Landroid/content/Context;)Lcom/alipay/mobile/quinox/bundle/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/k;->a()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 193
    .local v3, "reusableBundleMap":Ljava/util/Map;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 196
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 197
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 198
    .local v2, "ent":Ljava/util/Map$Entry;
    move-object v2, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 199
    .local v5, "bundleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 200
    .local v7, "bundleVersion":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v7    # "bundleVersion":Ljava/lang/String;
    goto :goto_2

    .line 202
    .end local v2    # "ent":Ljava/util/Map$Entry;
    .end local v5    # "bundleName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 203
    :cond_1
    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getReusableBundleKeys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BundleUpdate"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v0
.end method

.method public static declared-synchronized getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter v0

    .line 67
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/.getUpdateBundleKeys.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    .local v1, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 70
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    monitor-exit v0

    return-object v2

    .line 72
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .end local v1    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getUpdateBundleNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 48
    .local v0, "updateBundleKeys":Ljava/util/Set;
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    .local v1, "updateBundleNames":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v3, "key":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-static {v3}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->keyToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read BundleUpdate(Name): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BundleUpdate"

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v1
.end method

.method public static getUpdateBundles(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "updateBundles":Ljava/util/Map;
    invoke-static {p0}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->getUpdateBundleKeys(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 80
    .local v3, "updateBundleKeys":Ljava/util/Set;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v2, "bundleKey":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->keyToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "bundleName":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->keyToVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "bundleVersion":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 85
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "bundleKey":Ljava/lang/String;
    .end local v4    # "bundleName":Ljava/lang/String;
    .end local v5    # "bundleVersion":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized saveUpdateBundleKeys(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateBundleKeys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/quinox/utils/ProcessLock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/.saveUpdateBundleKeys.lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/utils/ProcessLock;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .local v1, "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    :try_start_1
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->lock()V

    .line 139
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleUpdate;->a(Landroid/content/Context;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    monitor-exit v0

    return-void

    .line 141
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/ProcessLock;->unlock()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .end local v1    # "processLock":Lcom/alipay/mobile/quinox/utils/ProcessLock;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "updateBundleKeys":Ljava/util/Set;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
