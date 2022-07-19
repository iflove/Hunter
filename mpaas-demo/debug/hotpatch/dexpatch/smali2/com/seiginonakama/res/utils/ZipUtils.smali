.class public Lcom/seiginonakama/res/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p0, "original"    # Ljava/util/zip/ZipEntry;

    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/seiginonakama/res/utils/ZipUtils;->copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 6
    .param p0, "original"    # Ljava/util/zip/ZipEntry;
    .param p1, "newName"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/zip/ZipEntry;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "copy":Ljava/util/zip/ZipEntry;
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 41
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 46
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 49
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 50
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 53
    :cond_4
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 55
    return-object v0
.end method

.method public static pack(Ljava/io/File;Ljava/io/File;I)V
    .locals 4
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetZip"    # Ljava/io/File;
    .param p2, "compressionLevel"    # I

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    move-object v0, v1

    invoke-virtual {v1, p2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 105
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/seiginonakama/res/utils/ZipUtils;->pack(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 99
    .end local v0    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static pack(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "pathPrefix"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 113
    .local v2, "filenames":[Ljava/lang/String;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Given file \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' doesn\'t exist!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Given file is not a directory \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 121
    aget-object v3, v2, v0

    .line 122
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v1, "file":Ljava/io/File;
    move-object v1, v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 124
    .local v4, "isDir":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "path":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    :cond_2
    move-object v6, v5

    .line 131
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 134
    invoke-static {v5}, Lcom/seiginonakama/res/utils/ApkUtils;->okToCompressed(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 135
    invoke-static {v7, v1}, Lcom/seiginonakama/res/utils/ApkUtils;->setNoCompress(Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 138
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 140
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 143
    if-nez v4, :cond_4

    .line 144
    invoke-static {v1, p2}, Lcom/seiginonakama/res/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 147
    :cond_4
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 150
    if-eqz v4, :cond_5

    .line 151
    invoke-static {v1, v5, p2}, Lcom/seiginonakama/res/utils/ZipUtils;->pack(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 120
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "isDir":Z
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method public static unpack(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "zip"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 63
    move-object v0, v1

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 67
    .local v3, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v2, "name":Ljava/lang/String;
    move-object v2, v5

    if-eqz v5, :cond_1

    .line 71
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    invoke-static {v5}, Lcom/seiginonakama/res/utils/FileUtils;->forceMkdir(Ljava/io/File;)V

    goto :goto_1

    .line 75
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/seiginonakama/res/utils/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 77
    invoke-static {v4, v5}, Lcom/seiginonakama/res/utils/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v4}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 80
    :catch_0
    move-exception v5

    .line 81
    .local v2, "ze":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to unpack zip entry \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "zf":Ljava/util/zip/ZipFile;
    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "zip":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .end local v2    # "ze":Ljava/io/IOException;
    .restart local v0    # "zf":Ljava/util/zip/ZipFile;
    .restart local v1    # "en":Ljava/util/Enumeration;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "zip":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    :goto_2
    :try_start_4
    invoke-static {v4}, Lcom/seiginonakama/res/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "zf":Ljava/util/zip/ZipFile;
    .end local p0    # "zip":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "zf":Ljava/util/zip/ZipFile;
    .restart local p0    # "zip":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 92
    return-void

    .line 90
    :catch_1
    move-exception v1

    .line 92
    return-void

    .line 87
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 89
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 92
    goto :goto_3

    .line 90
    :catch_2
    move-exception v2

    .line 92
    :cond_3
    :goto_3
    throw v1
.end method
