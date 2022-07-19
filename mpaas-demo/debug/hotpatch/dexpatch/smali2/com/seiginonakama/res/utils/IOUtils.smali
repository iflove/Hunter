.class public Lcom/seiginonakama/res/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DIR_SEPARATOR:C

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/seiginonakama/res/utils/IOUtils;->DIR_SEPARATOR:C

    .line 100
    new-instance v0, Ljava/io/StringWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 101
    .local v0, "buf":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 103
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/seiginonakama/res/utils/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 104
    .end local v0    # "buf":Ljava/io/StringWriter;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 120
    if-eqz p0, :cond_0

    .line 121
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    return-void

    .line 126
    :cond_0
    :goto_0
    return-void
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 5
    .param p0, "input1"    # Ljava/io/InputStream;
    .param p1, "input2"    # Ljava/io/InputStream;

    .line 330
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 333
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 334
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 337
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 338
    :goto_0
    const/4 v3, -0x1

    if-eq v3, v0, :cond_3

    .line 339
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 340
    .local v2, "ch2":I
    if-eq v0, v2, :cond_2

    .line 341
    return v1

    .line 343
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 344
    .end local v2    # "ch2":I
    goto :goto_0

    .line 346
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 347
    .restart local v2    # "ch2":I
    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 187
    invoke-static {p0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 188
    .local v2, "count":J
    move-wide v2, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 189
    const/4 v0, -0x1

    return v0

    .line 191
    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 7
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;

    .line 283
    invoke-static {p0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 284
    .local v2, "count":J
    move-wide v2, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 285
    const/4 v0, -0x1

    return v0

    .line 287
    :cond_0
    long-to-int v0, v2

    return v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;

    .line 233
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-static {v0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 235
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 255
    if-nez p2, :cond_0

    .line 256
    invoke-static {p0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 260
    invoke-static {v0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 262
    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 208
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 209
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .local v1, "count":J
    const/4 v3, 0x0

    move v4, v3

    .line 211
    .local v4, "n":I
    :goto_0
    const/4 v5, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v4, v6

    if-eq v5, v6, :cond_0

    .line 212
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_0

    .line 215
    :cond_0
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 7
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;

    .line 303
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 304
    .local v0, "buffer":[C
    const-wide/16 v1, 0x0

    .local v1, "count":J
    const/4 v3, 0x0

    move v4, v3

    .line 306
    .local v4, "n":I
    :goto_0
    const/4 v5, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v4, v6

    if-eq v5, v6, :cond_0

    .line 307
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 308
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_0

    .line 310
    :cond_0
    return-wide v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;

    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/seiginonakama/res/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 144
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 164
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lcom/seiginonakama/res/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
