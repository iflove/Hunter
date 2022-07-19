.class public final Lcom/alipay/mobile/quinox/utils/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IOUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static readBytesFromFile(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "bytesRet":[B
    const-string v1, "readBytesFromFile(File["

    const-string v2, "IOUtil"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 53
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 54
    move-object v3, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 58
    goto :goto_1

    .line 55
    :catch_0
    move-exception v4

    .line 56
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): Exception occur."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 49
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): null == file || !file.exists()"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_1
    return-object v0
.end method

.method public static readBytesFromFile(Ljava/lang/String;)[B
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "strRet":Ljava/lang/String;
    const-string v1, "readStringFromFile(File["

    const-string v2, "IOUtil"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 32
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 33
    move-object v3, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 37
    goto :goto_1

    .line 34
    :catch_0
    move-exception v4

    .line 35
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): Exception occur."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 28
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]): null == file || !file.exists()"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_1
    return-object v0
.end method

.method public static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/IOUtil;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeDateToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "bRet":Z
    const/4 v1, 0x0

    .line 97
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 98
    .local v3, "parent":Ljava/io/File;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 103
    move-object v1, v2

    invoke-virtual {v2, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    const/4 v0, 0x1

    .line 108
    .end local v3    # "parent":Ljava/io/File;
    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 109
    goto :goto_1

    .line 108
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "IOUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeDateToFile(String["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], String["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]) Exception occur."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 110
    :goto_1
    return v0

    .line 108
    :goto_2
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static writeDateToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static writeDateToFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static writeDateToFile([BLjava/io/File;)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "file"    # Ljava/io/File;

    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static writeDateToFile([BLjava/io/File;Z)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z

    .line 85
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 86
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 85
    return v0
.end method

.method public static writeDateToFile([BLjava/lang/String;)Z
    .locals 3
    .param p0, "data"    # [B
    .param p1, "file"    # Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static writeDateToFile([BLjava/lang/String;Z)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 80
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v0, v1, p2}, Lcom/alipay/mobile/quinox/utils/IOUtil;->writeDateToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 80
    return v0
.end method
