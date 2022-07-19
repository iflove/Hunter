.class public Lcom/alipay/mobile/common/helper/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ZipHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static close(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 78
    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ZipHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public static unZip(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 12
    .param p0, "isUnZip"    # Ljava/io/InputStream;
    .param p1, "destPath"    # Ljava/lang/String;

    const-string v0, "ZipHelper"

    .line 21
    const/4 v1, 0x1

    .line 23
    .local v1, "unZipState":Z
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "../"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    return v2

    .line 27
    :cond_0
    const/4 v3, 0x0

    .local v3, "zipIn":Ljava/util/zip/ZipInputStream;
    const/4 v4, 0x0

    move-object v5, v4

    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    move-object v6, v4

    .line 32
    .local v6, "file":Ljava/io/File;
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 35
    .local v7, "buf":[B
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    move-object v8, v4

    .line 38
    .local v8, "fileOut":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v5, v9

    if-eqz v9, :cond_4

    .line 39
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 40
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 45
    .local v4, "parent":Ljava/io/File;
    move-object v4, v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    .line 50
    :goto_1
    invoke-virtual {v3, v7}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "readedBytes":I
    if-lez v9, :cond_3

    .line 51
    invoke-virtual {v8, v7, v2, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-static {v8}, Lcom/alipay/mobile/common/helper/ZipHelper;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v4    # "parent":Ljava/io/File;
    goto :goto_0

    .line 62
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "readedBytes":I
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 63
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :cond_5
    :goto_2
    goto :goto_3

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 60
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 56
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    const/4 v1, 0x0

    .line 61
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5

    .line 62
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 63
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 70
    :goto_3
    return v1

    .line 61
    :goto_4
    if-eqz v3, :cond_6

    .line 62
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 63
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 65
    :catch_2
    move-exception v4

    .line 66
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 67
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    nop

    :goto_6
    throw v2
.end method

.method public static unZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "unZipfileName"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, "unZipState":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alipay/mobile/common/helper/ZipHelper;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ZipHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return v0
.end method
