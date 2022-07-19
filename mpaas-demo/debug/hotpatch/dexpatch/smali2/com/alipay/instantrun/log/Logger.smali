.class public abstract Lcom/alipay/instantrun/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# instance fields
.field LOG_LEVEL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 255
    const-string v0, ""

    if-nez p0, :cond_0

    .line 256
    return-object v0

    .line 261
    :cond_0
    move-object v1, p0

    .line 262
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_2

    .line 263
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 264
    return-object v0

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 269
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 270
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 271
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 272
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 273
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 97
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 100
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 112
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 115
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 120
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 121
    invoke-static {p2}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 123
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 220
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 223
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 235
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 238
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 243
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 244
    invoke-static {p2}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 246
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public footprint(Ljava/lang/String;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 277
    const-string v0, "footprint"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/instantrun/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 136
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 151
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 154
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 159
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 160
    invoke-static {p2}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 162
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLogLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 42
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 43
    iput p1, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "level should between [2 , 7]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 58
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 73
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 76
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 81
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 82
    invoke-static {p2}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 84
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 175
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/alipay/instantrun/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 178
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 190
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 193
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 204
    iget v0, p0, Lcom/alipay/instantrun/log/Logger;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 205
    invoke-static {p2}, Lcom/alipay/instantrun/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/instantrun/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 207
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
