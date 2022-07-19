.class public final Lcom/alipay/mpaas/bundle/c/a;
.super Ljava/lang/Object;
.source "Crc32.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 16
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 17
    .local v0, "crc32":Ljava/util/zip/CRC32;
    const/4 v1, 0x0

    .line 18
    .local v1, "fileinputstream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 19
    .local v2, "checkedinputstream":Ljava/util/zip/CheckedInputStream;
    const-wide/16 v3, -0x1

    .line 21
    .local v3, "crc":J
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 22
    new-instance v5, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v5, v1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v2, v5

    .line 23
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v5

    .line 31
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    goto :goto_0

    .line 33
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    :goto_1
    goto :goto_3

    .line 40
    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 27
    :catch_2
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    if-eqz v1, :cond_1

    .line 31
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 34
    goto :goto_2

    .line 33
    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 38
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 44
    :cond_2
    :goto_3
    return-wide v3

    .line 29
    :goto_4
    if-eqz v1, :cond_3

    .line 31
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 34
    goto :goto_5

    .line 33
    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 38
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 41
    goto :goto_6

    .line 40
    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    :cond_4
    :goto_6
    throw v5
.end method
