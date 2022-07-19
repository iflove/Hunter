.class public Lcom/alipay/mobile/nebula/util/H5FileUtil;
.super Ljava/lang/Object;
.source "H5FileUtil.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x800

.field public static final TAG:Ljava/lang/String; = "H5FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPathValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "../"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/.."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .line 223
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    return v1

    .line 226
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 228
    .local v2, "children":[Ljava/io/File;
    move-object v2, v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    array-length v0, v2

    return v0

    .line 229
    :cond_2
    :goto_0
    return v1
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "childPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 215
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "absPath"    # Ljava/lang/String;

    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    return-object p0

    .line 239
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 240
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 243
    .end local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5FileUtil"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    const-string v0, "exception detail"

    const-string v1, "H5FileUtil"

    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 290
    return v4

    .line 294
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 299
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    if-nez p2, :cond_3

    .line 301
    return v3

    .line 303
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 306
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 307
    return v3

    .line 306
    :cond_5
    const/4 v2, 0x0

    move-object v5, v2

    .line 315
    .local v2, "in":Ljava/io/FileInputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 316
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v6

    .line 320
    nop

    .line 322
    const/16 v6, 0x800

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v6

    .line 326
    .local v6, "buffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "len":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_6

    .line 327
    invoke-virtual {v5, v6, v3, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 329
    :cond_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v8    # "len":I
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 335
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    nop

    .line 338
    return v4

    .line 334
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 335
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    return v3

    .line 334
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 335
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 317
    .end local v6    # "buffer":[B
    :catch_1
    move-exception v4

    .line 318
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    return v3

    .line 295
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_7
    :goto_2
    return v3

    .line 285
    :cond_8
    :goto_3
    return v3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    const/4 v0, 0x0

    .line 673
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .local v1, "e":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 678
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 679
    goto :goto_0

    .line 678
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .end local v0    # "result":Z
    .end local p0    # "srcFile":Ljava/io/File;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 680
    .end local v1    # "e":Ljava/io/FileInputStream;
    .restart local v0    # "result":Z
    .restart local p0    # "srcFile":Ljava/io/File;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 681
    .local v1, "var8":Ljava/io/IOException;
    const-string v2, "H5FileUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    const/4 v0, 0x0

    .line 685
    .end local v1    # "var8":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method public static copyToFile(Ljava/io/FileInputStream;Ljava/io/File;)Z
    .locals 9
    .param p0, "inputStream"    # Ljava/io/FileInputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 693
    .local v1, "outputStream":Ljava/io/File;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 698
    .end local v1    # "outputStream":Ljava/io/File;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 701
    .local v0, "outputStream1":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 702
    move-object v0, v2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 703
    .local v8, "e":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 706
    .local v3, "inputChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 709
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 710
    nop

    .line 719
    .local v1, "var5":Z
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 722
    goto :goto_1

    .line 720
    :catch_0
    move-exception v2

    .line 713
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 708
    .end local v1    # "var5":Z
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 709
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .end local v0    # "outputStream1":Ljava/io/FileOutputStream;
    .end local p0    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 717
    .end local v3    # "inputChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "e":Ljava/nio/channels/FileChannel;
    .restart local v0    # "outputStream1":Ljava/io/FileOutputStream;
    .restart local p0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 714
    :catch_1
    move-exception v2

    .line 715
    .local v2, "var21":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "FileUtils"

    const-string v4, "copy file error!"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 717
    .end local v2    # "var21":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 719
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 722
    :goto_2
    goto :goto_3

    .line 720
    :catch_2
    move-exception v2

    goto :goto_2

    .line 727
    :cond_2
    :goto_3
    return v1

    .line 717
    :goto_4
    if-eqz v0, :cond_3

    .line 719
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 722
    goto :goto_5

    .line 720
    :catch_3
    move-exception v2

    .line 722
    :cond_3
    :goto_5
    throw v1
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .line 732
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 736
    :cond_0
    const/4 v1, 0x0

    .line 737
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/16 v2, 0x1000

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .local v2, "buffer":[B
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 741
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "bytesRead":I
    if-ltz v3, :cond_1

    .line 742
    invoke-virtual {v1, v2, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 745
    .end local v4    # "bytesRead":I
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 746
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 747
    nop

    .line 749
    const/4 v0, 0x1

    return v0

    .line 745
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 746
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "destFile":Ljava/io/File;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "buffer":[B
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 751
    .local v1, "var9":Ljava/io/IOException;
    const-string v2, "H5FileUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 752
    return v0
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    return v1

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 51
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 52
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5FileUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 145
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->useSafeDelete()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/monitor/util/FileUtils$PathType;->PATH_TYPE_ANY:Lcom/alipay/mobile/monitor/util/FileUtils$PathType;

    invoke-static {v0, p0, v3}, Lcom/alipay/mobile/monitor/util/FileUtils$PathType;->checkPathValid(Landroid/content/Context;Ljava/io/File;Lcom/alipay/mobile/monitor/util/FileUtils$PathType;)Lcom/alipay/mobile/monitor/util/FileUtils$Result;

    move-result-object v0

    move-object v3, v2

    .line 151
    .local v3, "result":Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 152
    return v1

    .line 154
    :cond_1
    iget-boolean v0, v3, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->success:Z

    if-nez v0, :cond_2

    .line 155
    const-string v0, "h5_delete_inValid_file"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, v3, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->errMessage:Ljava/lang/String;

    .line 157
    const-string v2, "errMessage"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget v1, v3, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->errCode:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "errCode"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 159
    const/4 v0, 0x0

    return v0

    .line 165
    .end local v3    # "result":Lcom/alipay/mobile/monitor/util/FileUtils$Result;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v3, "deleteFile:"

    const-string v4, "H5FileUtil"

    if-eqz v0, :cond_3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 170
    :cond_3
    const/4 v0, 0x1

    .line 171
    .local v0, "result":Z
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 172
    .local v2, "files":[Ljava/io/File;
    move-object v2, v5

    if-nez v5, :cond_4

    .line 173
    return v1

    .line 175
    :cond_4
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_5

    .line 176
    aget-object v5, v2, v1

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "index":I
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    or-int/2addr v0, v1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return v0

    .line 146
    .end local v0    # "result":Z
    .end local v2    # "files":[Ljava/io/File;
    :cond_6
    :goto_1
    return v1
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 126
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreateTime(Ljava/lang/String;)J
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;

    .line 659
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const-wide/16 v0, 0x0

    return-wide v0

    .line 663
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 665
    .local v0, "lastModified":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 666
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 352
    if-nez p0, :cond_0

    .line 353
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 389
    return-object v1

    .line 392
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x0

    .line 393
    .local v2, "index":I
    move v2, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 366
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 367
    .local v2, "type":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    return-object v2

    .line 373
    :cond_0
    return-object v1

    .line 376
    :cond_1
    return-object v2
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "absPath"    # Ljava/lang/String;

    const-string v0, "H5FileUtil"

    .line 532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 533
    return-object v2

    .line 535
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 536
    .local v3, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    .line 539
    :cond_1
    const/4 v1, 0x0

    .line 540
    .local v1, "fileHash":Ljava/lang/String;
    const/4 v4, 0x0

    .line 542
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 545
    goto :goto_0

    .line 543
    :catch_0
    move-exception v5

    .line 544
    .local v5, "e1":Ljava/io/FileNotFoundException;
    const-string v6, "exception detail."

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    :goto_0
    if-nez v4, :cond_2

    .line 548
    return-object v2

    .line 552
    :cond_2
    const/16 v2, 0x800

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 554
    .local v2, "buffer":[B
    :try_start_1
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 556
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    .local v7, "length":I
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_3

    .line 557
    invoke-virtual {v5, v2, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 560
    :cond_3
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 569
    .end local v7    # "length":I
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 570
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 571
    goto :goto_3

    .line 569
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 561
    :catch_1
    move-exception v5

    .line 562
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "exception detail"

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    goto :goto_2

    .line 565
    :catch_2
    move-exception v6

    .line 566
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_4
    const-string v7, "IOException"

    invoke-static {v0, v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 570
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 571
    nop

    .line 572
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 573
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 575
    :cond_4
    return-object v1

    .line 569
    :goto_4
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 570
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 537
    .end local v1    # "fileHash":Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_5
    :goto_5
    return-object v2
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 467
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    return-object v0

    .line 470
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 471
    .local v1, "index":I
    move v1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 472
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 474
    :cond_1
    return-object p0
.end method

.method public static getFileSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "absPath"    # Ljava/lang/String;

    const-string v0, "H5FileUtil"

    .line 491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 492
    return-object v2

    .line 494
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 496
    .local v3, "file":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    .line 499
    :cond_1
    const/4 v1, 0x0

    .line 500
    .local v1, "fileHash":Ljava/lang/String;
    const/4 v4, 0x0

    .line 502
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 505
    goto :goto_0

    .line 503
    :catch_0
    move-exception v5

    .line 504
    .local v5, "e1":Ljava/io/FileNotFoundException;
    const-string v6, "exception detail."

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    :goto_0
    if-nez v4, :cond_2

    .line 507
    return-object v2

    .line 511
    :cond_2
    const/16 v2, 0x800

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v2

    .line 513
    .local v2, "buffer":[B
    :try_start_1
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    .line 515
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    .local v7, "length":I
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    move v7, v8

    if-lez v8, :cond_3

    .line 516
    invoke-virtual {v5, v2, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 522
    .end local v7    # "length":I
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 523
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 524
    goto :goto_2

    .line 522
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 519
    :catch_1
    move-exception v5

    .line 520
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "exception detail"

    invoke-static {v0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 523
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 524
    nop

    .line 525
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 526
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 528
    :cond_4
    return-object v1

    .line 522
    :goto_3
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 523
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 497
    .end local v1    # "fileHash":Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_5
    :goto_4
    return-object v2
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 478
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x0

    return-object v0

    .line 482
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 483
    .local v2, "index":I
    move v2, v0

    if-lez v0, :cond_1

    .line 484
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 486
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "absPath"    # Ljava/lang/String;

    .line 647
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x0

    return-object v0

    .line 651
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 653
    .local v0, "lastModified":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 654
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 655
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 400
    if-nez p0, :cond_0

    .line 401
    const-string v0, "*/*"

    return-object v0

    .line 403
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "type":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "extension":Ljava/lang/String;
    const-string v2, "js"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const-string v2, "application/javascript"

    return-object v2

    .line 415
    :cond_0
    if-eqz v1, :cond_1

    .line 416
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_1
    return-object v0
.end method

.method public static getMimeTypeFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentType"    # Ljava/lang/String;

    .line 424
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 425
    .local v2, "splits":[Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 426
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 430
    .end local v2    # "splits":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    .line 429
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "H5FileUtil"

    const-string v3, "getMimeTypeFromContentType"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .line 757
    const/4 v0, 0x0

    .line 759
    .local v0, "sdDir":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 761
    .local v2, "sdCardExist":Z
    if-eqz v1, :cond_0

    .line 762
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 767
    .end local v2    # "sdCardExist":Z
    :cond_0
    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5FileUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "absPath"    # Ljava/lang/String;

    .line 579
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 580
    return-object v1

    .line 583
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 584
    .local v2, "file":Ljava/io/File;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    const/4 v3, 0x0

    move v4, v3

    .line 585
    .local v4, "length":I
    move v4, v0

    const/16 v5, 0x5000

    if-le v0, v5, :cond_1

    .line 586
    return-object v1

    .line 589
    :cond_1
    const/4 v0, 0x0

    .line 590
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 591
    .local v5, "in":Ljava/io/BufferedInputStream;
    const/16 v6, 0x400

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v6

    .line 593
    .local v6, "buffer":[B
    :try_start_0
    new-instance v7, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v7, v4}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>(I)V

    move-object v0, v7

    .line 594
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v7

    move v7, v3

    .line 596
    .local v7, "len":I
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v5, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    move v7, v9

    if-eq v8, v9, :cond_2

    .line 597
    invoke-virtual {v0, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 604
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 605
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 599
    return-object v1

    .line 603
    .end local v7    # "len":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 600
    :catch_0
    move-exception v3

    .line 601
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "H5FileUtil"

    const-string v8, "exception detail"

    invoke-static {v7, v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 604
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 605
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 606
    nop

    .line 607
    return-object v1

    .line 603
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getByteArrayPool()Lcom/alipay/mobile/nebula/io/ByteArrayPool;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/io/ByteArrayPool;->returnBuf([B)V

    .line 604
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 605
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 452
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 442
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    return v0

    .line 447
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 457
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 458
    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x0

    return v0

    .line 462
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .param p0, "absPath"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "absPath"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v1, 0x0

    return v1

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/io/File;)Z

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5FileUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    return v1

    .line 93
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    if-nez p2, :cond_2

    .line 95
    return v1

    .line 97
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->delete(Ljava/lang/String;)Z

    .line 102
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "srcFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 105
    .end local v0    # "srcFile":Ljava/io/File;
    .end local v2    # "dstFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "H5FileUtil"

    const-string v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 86
    :cond_4
    :goto_0
    return v1
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 625
    if-nez p0, :cond_0

    .line 626
    const/4 v0, 0x0

    return-object v0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    new-array v2, v1, [C

    .line 632
    .local v2, "buffer":[C
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .local v3, "reader":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 634
    :goto_0
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    .line 635
    .local v5, "size":I
    move v5, v6

    if-ltz v6, :cond_1

    .line 638
    invoke-virtual {v0, v2, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    nop

    .end local v5    # "size":I
    goto :goto_0

    .line 642
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    goto :goto_1

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "H5FileUtil"

    const-string v4, "Exception"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "absPath"    # Ljava/lang/String;

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 614
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 615
    move-object v1, v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 619
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 620
    goto :goto_1

    .line 619
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 616
    :catch_0
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "H5FileUtil"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 621
    :goto_1
    return-object v0

    .line 619
    :goto_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static size(Ljava/io/File;)J
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 256
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return-wide v1

    .line 260
    :cond_0
    const-wide/16 v3, 0x0

    .line 261
    .local v3, "length":J
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 263
    return-wide v0

    .line 266
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v5, 0x0

    .line 267
    .local v5, "files":[Ljava/io/File;
    move-object v5, v0

    if-eqz v0, :cond_4

    array-length v0, v5

    if-nez v0, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    array-length v0, v5

    .line 272
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 273
    aget-object v2, v5, v1

    .line 274
    .local v2, "child":Ljava/io/File;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->size(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 272
    .end local v2    # "child":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "index":I
    :cond_3
    return-wide v3

    .line 268
    .end local v0    # "size":I
    :cond_4
    :goto_1
    return-wide v1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2
    .param p0, "absPath"    # Ljava/lang/String;

    .line 248
    if-nez p0, :cond_0

    .line 249
    const-wide/16 v0, 0x0

    return-wide v0

    .line 251
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->size(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static useSafeDelete()Z
    .locals 3

    .line 134
    const/4 v0, 0x0

    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 135
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "h5_useSafeDelete"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v2, 0x0

    return v2

    .line 141
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
