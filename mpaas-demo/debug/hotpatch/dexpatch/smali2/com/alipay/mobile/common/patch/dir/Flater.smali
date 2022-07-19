.class public Lcom/alipay/mobile/common/patch/dir/Flater;
.super Ljava/lang/Object;
.source "Flater.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z

.field private static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-class v0, Lcom/alipay/mobile/common/patch/dir/Flater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    .line 26
    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Z

    .line 29
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->c:Ljava/nio/charset/Charset;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 162
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/common/patch/dir/Flater;->c:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "stream"    # Ljava/io/Closeable;

    .line 312
    if-nez p0, :cond_0

    .line 313
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string v3, "closeStream"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 137
    const/16 v1, 0x400

    new-array v1, v1, [B

    .local v1, "data":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 140
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 142
    .local v3, "len":I
    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 146
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v3    # "len":I
    goto :goto_0

    .line 153
    .end local v1    # "data":[B
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 154
    return-void

    .line 149
    :catchall_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string v4, "loadFileToStream"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 153
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/io/File;Ljava/util/List;I)V
    .locals 8
    .param p0, "folder"    # Ljava/io/File;
    .param p1, "paths"    # Ljava/util/List;
    .param p2, "cutLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 114
    .local v3, "sub":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "path":Ljava/lang/String;
    sget-boolean v5, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Z

    if-eqz v5, :cond_0

    .line 117
    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 120
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    invoke-static {v3, p1, p2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string/jumbo v7, "packFolderToStream"

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v3    # "sub":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_2
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;J[B)V
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "length"    # J
    .param p4, "buf"    # [B

    .line 292
    const-wide/16 v0, 0x400

    div-long v2, p2, v0

    long-to-int v3, v2

    .line 293
    .local v3, "count":I
    rem-long v0, p2, v0

    long-to-int v1, v0

    .line 296
    .local v1, "extra":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p0, p4}, Ljava/io/InputStream;->read([B)I

    .line 298
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 301
    :cond_0
    if-lez v1, :cond_1

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 303
    invoke-virtual {p1, p4, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 307
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string/jumbo v5, "readByteToStream"

    invoke-interface {v2, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 308
    :cond_1
    :goto_2
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 275
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    .line 278
    .local v2, "subs":[Ljava/io/File;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 279
    invoke-static {v5}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "subs":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 285
    :catchall_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string v4, "deleteFile"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    return v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 40
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 46
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    nop

    .line 51
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/util/List;I)V

    .line 59
    new-instance v2, Lcom/alipay/mobile/common/patch/dir/Flater$1;

    invoke-direct {v2}, Lcom/alipay/mobile/common/patch/dir/Flater$1;-><init>()V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 68
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    const/4 p0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_4

    .line 71
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 73
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/16 p1, 0x2f

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    invoke-static {v5, v2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 105
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 98
    return v3

    .line 100
    :catchall_0
    move-exception p0

    move-object p1, v2

    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 52
    return v0

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    const-string/jumbo v3, "packFolderToFile"

    invoke-interface {v1, v2, v3, p0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 102
    return v0

    .line 105
    :catchall_2
    move-exception p0

    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    throw p0

    .line 43
    :cond_6
    :goto_4
    return v0
.end method

.method public static unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p0, "flatPath"    # Ljava/lang/String;
    .param p1, "folderPath"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "unpackFileToFolder"

    .line 172
    const/4 v4, 0x0

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 178
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 179
    .local v5, "flatFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 180
    .local v6, "folderDir":Ljava/io/File;
    const/4 v7, 0x0

    .line 181
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 184
    .local v8, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 188
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-static {v6}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v10, v4

    .line 191
    .local v10, "isSucc":Z
    if-nez v0, :cond_2

    .line 268
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 192
    return v4

    .line 196
    .end local v10    # "isSucc":Z
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 197
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    .line 199
    const/16 v0, 0x400

    new-array v0, v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    .line 200
    .local v10, "data":[B
    const/4 v0, 0x1

    .line 201
    .local v0, "isName":Z
    const/4 v11, 0x0

    .line 202
    .local v11, "cursor":I
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v18, v8

    move v8, v0

    move-object v0, v9

    move-object/from16 v9, v18

    .line 206
    .end local v0    # "isName":Z
    .local v8, "isName":Z
    .local v9, "output":Ljava/io/OutputStream;
    .local v12, "length":J
    :goto_0
    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-lez v17, :cond_3

    .line 207
    :try_start_2
    invoke-static {v7, v9, v12, v13, v10}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J[B)V

    .line 209
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 210
    const/4 v8, 0x1

    .line 211
    const-wide/16 v12, 0x0

    .line 213
    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v15

    int-to-byte v15, v15

    .line 218
    .local v14, "aByte":B
    move v14, v15

    if-ltz v15, :cond_8

    .line 222
    if-eqz v14, :cond_4

    .line 223
    aput-byte v14, v10, v11

    .line 225
    add-int/lit8 v11, v11, 0x1

    .line 226
    goto :goto_0

    .line 229
    :cond_4
    invoke-static {v10, v11}, Lcom/alipay/mobile/common/patch/dir/Flater;->a([BI)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v0, "str":Ljava/lang/String;
    move-object/from16 v16, v15

    .end local v0    # "str":Ljava/lang/String;
    .local v16, "str":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    if-eqz v8, :cond_6

    .line 236
    add-int/lit8 v0, v11, -0x1

    .line 237
    .local v0, "index":I
    new-instance v15, Ljava/io/File;

    move-object/from16 v4, v16

    .end local v16    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    invoke-direct {v15, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v16, v0

    .end local v0    # "index":I
    .local v16, "index":I
    const/16 v0, 0x2f

    if-ne v1, v0, :cond_5

    .line 240
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 243
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    .end local v9    # "output":Ljava/io/OutputStream;
    .local v0, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 249
    .end local v8    # "isName":Z
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "index":I
    .local v1, "isName":Z
    move-object v9, v0

    move v8, v1

    goto :goto_1

    .line 251
    .end local v0    # "output":Ljava/io/OutputStream;
    .end local v1    # "isName":Z
    .end local v4    # "str":Ljava/lang/String;
    .restart local v8    # "isName":Z
    .restart local v9    # "output":Ljava/io/OutputStream;
    .local v16, "str":Ljava/lang/String;
    :cond_6
    move-object/from16 v4, v16

    .end local v16    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v12    # "length":J
    .local v0, "length":J
    move-wide v12, v0

    goto :goto_1

    .line 253
    .end local v0    # "length":J
    .restart local v12    # "length":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 254
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v15, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    invoke-interface {v1, v15, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v11, 0x0

    .line 259
    .end local v4    # "str":Ljava/lang/String;
    .end local v14    # "aByte":B
    move-object/from16 v1, p0

    move-object v0, v4

    const/4 v4, 0x0

    goto :goto_0

    .line 231
    .restart local v14    # "aByte":B
    .restart local v16    # "str":Ljava/lang/String;
    :cond_7
    move-object/from16 v4, v16

    .end local v16    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v0, v4

    const/4 v4, 0x0

    goto :goto_0

    .line 268
    .end local v4    # "str":Ljava/lang/String;
    .end local v14    # "aByte":B
    :cond_8
    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v8    # "isName":Z
    .end local v10    # "data":[B
    .end local v11    # "cursor":I
    .end local v12    # "length":J
    :catchall_1
    move-exception v0

    move-object v8, v9

    goto :goto_3

    .line 268
    .end local v9    # "output":Ljava/io/OutputStream;
    .local v8, "output":Ljava/io/OutputStream;
    :cond_9
    :goto_2
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v9}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 185
    const/4 v1, 0x0

    return v1

    .line 263
    :catchall_2
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v4, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/lang/String;

    invoke-interface {v1, v4, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 268
    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 265
    const/4 v1, 0x0

    return v1

    .line 268
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    .line 269
    invoke-static {v8}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/Closeable;)V

    throw v0

    .line 175
    .end local v5    # "flatFile":Ljava/io/File;
    .end local v6    # "folderDir":Ljava/io/File;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "output":Ljava/io/OutputStream;
    :cond_a
    :goto_4
    const/4 v1, 0x0

    return v1
.end method
