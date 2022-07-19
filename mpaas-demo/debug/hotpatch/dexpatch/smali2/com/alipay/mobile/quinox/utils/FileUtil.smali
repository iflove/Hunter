.class public final Lcom/alipay/mobile/quinox/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
    }
.end annotation


# static fields
.field public static final STREAM_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 1
    .param p0, "root"    # Ljava/io/File;

    .line 307
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    if-eqz v0, :cond_1

    .line 309
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_1
    return-void
.end method

.method public static copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    .locals 6
    .param p0, "inputStream"    # Ljava/io/BufferedInputStream;
    .param p1, "file"    # Ljava/io/File;

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    .line 172
    .local v1, "exists":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    move v1, v2

    .line 176
    :cond_0
    if-eqz v1, :cond_2

    .line 177
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v2

    .line 178
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 180
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    if-lez v4, :cond_1

    .line 181
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v1    # "exists":Z
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyFile(Ljava/nio/channels/FileChannel;Ljava/lang/String;)V
    .locals 8
    .param p0, "inChannel"    # Ljava/nio/channels/FileChannel;
    .param p1, "str"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    .end local v0    # "outChannel":Ljava/nio/channels/FileChannel;
    .local v7, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v7    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local v0    # "outChannel":Ljava/nio/channels/FileChannel;
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    .end local v0    # "outChannel":Ljava/nio/channels/FileChannel;
    .restart local v7    # "outChannel":Ljava/nio/channels/FileChannel;
    :goto_0
    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "], File["

    const-string v3, "copyFile(File["

    const-string v4, "FileUtil"

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 31
    nop

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    const/4 v5, 0x1

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]): oRoot exist, and is not a dir. try to delete it:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]): oRoot don\'t not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]): oRoot exist now."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 49
    :goto_2
    if-eqz v5, :cond_7

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 52
    if-eqz v5, :cond_6

    array-length v6, v5

    if-lez v6, :cond_6

    .line 53
    array-length v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v6, v5, v3

    .line 54
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 53
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_6

    .line 57
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]): oRoot is an empty dir."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    goto :goto_6

    .line 60
    :cond_7
    nop

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]): oRoot finally failed to make dirs."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_6

    .line 64
    :cond_8
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doCopySingleFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_6

    .line 27
    :cond_9
    :goto_5
    nop

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]): null == iRoot || !iRoot.exists() || null == oRoot"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 67
    :goto_6
    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "iRoot"    # Ljava/lang/String;
    .param p1, "oRoot"    # Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static copySingleFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "iFile"    # Ljava/io/File;
    .param p1, "oFile"    # Ljava/io/File;

    .line 76
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doCopySingleFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .local v0, "bRet":Z
    goto :goto_1

    .line 77
    .end local v0    # "bRet":Z
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 78
    .restart local v0    # "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copySingleFile(File["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], File["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]): null == iFile || !iFile.exists() || null == oFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    return v0
.end method

.method public static copySingleFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "iFile"    # Ljava/lang/String;
    .param p1, "oFile"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copySingleFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 7
    .param p0, "root"    # Ljava/io/File;

    .line 119
    const-string v0, "deleteFile(File["

    const-string v1, "FileUtil"

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    const/4 v2, 0x1

    .line 125
    .local v2, "bRet":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    .line 126
    .local v4, "files":[Ljava/io/File;
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    array-length v3, v4

    if-lez v3, :cond_2

    .line 127
    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, v4, v1

    .line 128
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]): is an empty dir."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    .line 134
    .end local v2    # "bRet":Z
    .end local v4    # "files":[Ljava/io/File;
    .local v0, "bRet":Z
    goto :goto_4

    .line 135
    .end local v0    # "bRet":Z
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .restart local v0    # "bRet":Z
    goto :goto_4

    .line 120
    .end local v0    # "bRet":Z
    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 121
    .restart local v2    # "bRet":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]): null == root || !root.exists()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 138
    .end local v2    # "bRet":Z
    .restart local v0    # "bRet":Z
    :goto_4
    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "root"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFiles(Ljava/io/File;)Z
    .locals 1
    .param p0, "root"    # Ljava/io/File;

    .line 266
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 8
    .param p0, "root"    # Ljava/io/File;
    .param p1, "excludes"    # Ljava/util/Set;
    .param p2, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 316
    const-string v0, "FileUtil"

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 321
    new-instance v1, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;

    invoke-direct {v1, p1, p2}, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 322
    .local v1, "filter":Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 323
    .local v3, "files":[Ljava/io/File;
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;->allAccept()Z

    move-result v4

    .line 325
    .local v4, "bRet":Z
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    .line 326
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 327
    invoke-static {v7, p1, p2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move v4, v7

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 343
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Excluded to delete dir: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v1    # "filter":Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
    .end local v3    # "files":[Ljava/io/File;
    goto/16 :goto_5

    .line 332
    .restart local v1    # "filter":Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 334
    move v4, v2

    if-eqz v2, :cond_5

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Delete dir: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 337
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed to delete dir: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 340
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Ignore to delete dir (not empty): "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 346
    .end local v1    # "filter":Lcom/alipay/mobile/quinox/utils/FileUtil$MyFilenameFilter;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "bRet":Z
    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 354
    :cond_8
    const/4 v4, 0x0

    .line 355
    .restart local v4    # "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Excluded to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 347
    .end local v4    # "bRet":Z
    :cond_9
    :goto_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 348
    .local v2, "bRet":Z
    move v4, v1

    .end local v2    # "bRet":Z
    .restart local v4    # "bRet":Z
    if-eqz v1, :cond_a

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 351
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 317
    .end local v4    # "bRet":Z
    :cond_b
    :goto_4
    const/4 v4, 0x1

    .line 318
    .restart local v4    # "bRet":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFile(File["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]): null == root || !root.exists()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_5
    return v4
.end method

.method public static deleteFilesWithExcludePrefixes(Ljava/io/File;Ljava/util/Set;)Z
    .locals 1
    .param p0, "root"    # Ljava/io/File;
    .param p1, "excludePrefixes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesWithExcludes(Ljava/io/File;Ljava/util/Set;)Z
    .locals 1
    .param p0, "root"    # Ljava/io/File;
    .param p1, "excludes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private static deleteSingleFile(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 204
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 207
    :cond_0
    return-void
.end method

.method public static deleteSingleFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 196
    if-nez p0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFile(Ljava/io/File;)V

    .line 201
    return-void
.end method

.method public static deleteSingleFileImmediately(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "deleteFileImmediately(path="

    const-string v2, "FileUtil"

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v3, 0x0

    .line 230
    .local v3, "bRet":Z
    move v3, v0

    const-string v4, ")"

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to deleteFileImmediately(path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v3    # "bRet":Z
    :cond_1
    const/4 v3, 0x1

    .line 237
    .restart local v3    # "bRet":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): not exists."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return v3
.end method

.method public static deleteSingleFileImmediately(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 216
    if-nez p0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 218
    .local v0, "bRet":Z
    const-string v1, "FileUtil"

    const-string v2, "deleteFileImmediately(path == null)"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v0    # "bRet":Z
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteSingleFileImmediately(Ljava/io/File;)Z

    move-result v0

    .line 223
    .restart local v0    # "bRet":Z
    :goto_0
    return v0
.end method

.method private static doCopySingleFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0, "iFile"    # Ljava/io/File;
    .param p1, "oFile"    # Ljava/io/File;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "oFileExists":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "], File["

    const-string v3, "doCopySingleFile(File["

    const-string v4, "FileUtil"

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]): target file don\'t exist, no need to delete it."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "bRet":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]): failed to delete exist file."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    .end local v1    # "bRet":Z
    :cond_1
    const/4 v1, 0x0

    .line 101
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 102
    move-object v1, v5

    invoke-static {v5, p1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v2, "bRet":Z
    move v1, v2

    goto :goto_1

    .line 103
    .end local v2    # "bRet":Z
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 105
    .local v6, "bRet":Z
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]): Exception occur."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    .line 110
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "bRet":Z
    .local v1, "bRet":Z
    :goto_1
    return v1
.end method

.method private static doListFiles(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;
    .param p1, "fileFilter"    # Ljava/io/FileFilter;
    .param p2, "cache"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 380
    .local v1, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v0, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 381
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 382
    invoke-static {v3, p1, p2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doListFiles(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/ArrayList;)V

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static doListFiles(Ljava/io/File;Ljava/io/FilenameFilter;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;
    .param p1, "filenameFilter"    # Ljava/io/FilenameFilter;
    .param p2, "cache"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 402
    .local v1, "files":[Ljava/io/File;
    move-object v1, v0

    if-eqz v0, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 403
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    .line 404
    invoke-static {v3, p1, p2}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doListFiles(Ljava/io/File;Ljava/io/FilenameFilter;Ljava/util/ArrayList;)V

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static listFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p0, "root"    # Ljava/io/File;

    .line 363
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->listFiles(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static listFiles(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 3
    .param p0, "root"    # Ljava/io/File;
    .param p1, "fileFilter"    # Ljava/io/FileFilter;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "cache":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doListFiles(Ljava/io/File;Ljava/io/FileFilter;Ljava/util/ArrayList;)V

    .line 369
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    .line 370
    .local v1, "fileAry":[Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method

.method public static listFiles(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 3
    .param p0, "root"    # Ljava/io/File;
    .param p1, "filenameFilter"    # Ljava/io/FilenameFilter;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "cache":Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->doListFiles(Ljava/io/File;Ljava/io/FilenameFilter;Ljava/util/ArrayList;)V

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    .line 392
    .local v1, "fileAry":[Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    return-object v2
.end method
