.class public final Lcom/alipay/mobile/quinox/utils/ZipFileUtil;
.super Ljava/lang/Object;
.source "ZipFileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipFileUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static varargs deleteEntry(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "archivePaths"    # [Ljava/lang/String;

    .line 146
    if-eqz p0, :cond_0

    .line 150
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 151
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->doDeleteEntry(Ljava/io/File;Ljava/util/zip/ZipFile;[Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 147
    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs deleteEntry(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "archivePaths"    # [Ljava/lang/String;

    .line 138
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->deleteEntry(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the parameter \'file\' is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs declared-synchronized doDeleteEntry(Ljava/io/File;Ljava/util/zip/ZipFile;[Ljava/lang/String;)Z
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "archivePaths"    # [Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;

    monitor-enter v0

    .line 155
    if-eqz p1, :cond_a

    .line 159
    if-eqz p2, :cond_9

    :try_start_0
    array-length v1, p2

    if-eqz v1, :cond_9

    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v1, "set":Ljava/util/HashSet;
    const/4 v2, 0x0

    .line 164
    .local v2, "contains":Z
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 166
    const/4 v2, 0x1

    .line 167
    goto :goto_1

    .line 169
    :cond_0
    const-string v5, "ZipFileUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ZipEntry["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] is not exist. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 173
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 176
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v3, "temp":Ljava/io/File;
    move-object v3, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 179
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to delete pre temp file."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 187
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .local v4, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entries":Ljava/util/Enumeration;
    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    .line 191
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 192
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 194
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    move-object v6, v9

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v7, "archivePath":Ljava/lang/String;
    move-object v7, v9

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->pathSecurityCheck(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 198
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 199
    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 201
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 202
    .local v8, "is":Ljava/io/InputStream;
    move-object v8, v9

    invoke-static {v9, v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->copyStreamWithoutClosing(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 203
    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 205
    .end local v7    # "archivePath":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_5
    goto :goto_3

    .line 196
    .restart local v7    # "archivePath":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "security check fail : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "set":Ljava/util/HashSet;
    .end local v2    # "contains":Z
    .end local v3    # "temp":Ljava/io/File;
    .end local v4    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p2    # "archivePaths":[Ljava/lang/String;
    throw v8

    .line 206
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "archivePath":Ljava/lang/String;
    .restart local v1    # "set":Ljava/util/HashSet;
    .restart local v2    # "contains":Z
    .restart local v3    # "temp":Ljava/io/File;
    .restart local v4    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p2    # "archivePaths":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 208
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 211
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    monitor-exit v0

    return v6

    .line 213
    .end local v5    # "entries":Ljava/util/Enumeration;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v5

    .line 184
    .end local v4    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :cond_8
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create temp file. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    .end local v1    # "set":Ljava/util/HashSet;
    .end local v2    # "contains":Z
    .end local v3    # "temp":Ljava/io/File;
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "archivePaths is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "file == null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p2    # "archivePaths":[Ljava/lang/String;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static doInsertEntry(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/Map;Z)Z
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "archivePaths"    # Ljava/util/Map;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_c

    .line 48
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    .local v0, "set":Ljava/util/Set;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v1, "contains":Ljava/util/Set;
    const-string v2, "ZipFileUtil"

    const/4 v3, 0x0

    if-nez p3, :cond_2

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 57
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Already exist Entries: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n You may should pass \'force\'=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v2, 0x0

    return v2

    .line 54
    :cond_2
    move-object v4, v3

    move-object v5, v4

    .line 67
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v4, "temp":Ljava/io/File;
    move-object v4, v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 70
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to delete pre temp file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 78
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    .local v5, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 84
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v3

    .line 85
    .local v6, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    move-object v9, v8

    .local v9, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_8

    .line 86
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v7, "zipEntryName":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->pathSecurityCheck(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 92
    if-eqz p3, :cond_6

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Ignore zip entry (force=true):"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v5, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 96
    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->copyStreamWithoutClosing(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_2

    .line 89
    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "security check fail : "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "contains":Ljava/util/Set;
    .end local v4    # "temp":Ljava/io/File;
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local p2    # "archivePaths":Ljava/util/Map;
    .end local p3    # "force":Z
    throw v2

    .line 100
    .end local v7    # "zipEntryName":Ljava/lang/String;
    .restart local v0    # "set":Ljava/util/Set;
    .restart local v1    # "contains":Ljava/util/Set;
    .restart local v4    # "temp":Ljava/io/File;
    .restart local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local p2    # "archivePaths":Ljava/util/Map;
    .restart local p3    # "force":Z
    :cond_8
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 117
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 119
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 120
    .local v7, "entry":Ljava/util/Map$Entry;
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 122
    new-instance v8, Ljava/io/FileInputStream;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v3, "is":Ljava/io/InputStream;
    move-object v3, v8

    invoke-static {v8, v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->copyStreamWithoutClosing(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 124
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 125
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "entry":Ljava/util/Map$Entry;
    goto :goto_3

    .line 126
    :cond_9
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 128
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 129
    invoke-virtual {v4, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    .line 132
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 129
    return v2

    .line 131
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v9    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    .line 132
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2

    .line 75
    .end local v5    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :cond_a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create temp file. "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " => "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "contains":Ljava/util/Set;
    .end local v4    # "temp":Ljava/io/File;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "archivePaths is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insertEntry(Ljava/io/File;Ljava/util/Map;Z)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "archivePaths"    # Ljava/util/Map;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 35
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 40
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {p0, v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->doInsertEntry(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/util/Map;Z)Z

    move-result v1

    return v1

    .line 36
    .end local v0    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insertEntry(Ljava/lang/String;Ljava/util/Map;Z)Z
    .locals 2
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "archivePaths"    # Ljava/util/Map;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/ZipFileUtil;->insertEntry(Ljava/io/File;Ljava/util/Map;Z)Z

    move-result v0

    return v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the parameter \'file\' is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pathSecurityCheck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 219
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
