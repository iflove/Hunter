.class public abstract Lcom/alipay/euler/andfix/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 260
    const-string v0, ""

    if-nez p0, :cond_0

    .line 261
    return-object v0

    .line 266
    :cond_0
    move-object v1, p0

    .line 267
    :goto_0
    if-eqz v1, :cond_2

    .line 268
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1

    .line 269
    return-object v0

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 275
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 278
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 102
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 105
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 117
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 120
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 125
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 126
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 128
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract debug(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 225
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 228
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 240
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 243
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 248
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 249
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 251
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public footprint(Ljava/lang/String;)I
    .locals 1

    .line 282
    const-string v0, "footprint"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/euler/andfix/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 141
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 144
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 156
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 159
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 164
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 165
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 167
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLogLevel(I)V
    .locals 1

    .line 47
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 48
    iput p1, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "level should between [2 , 7]"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 66
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 78
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 81
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 86
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 87
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 89
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract verbose(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 180
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 183
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 195
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 198
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 209
    iget v0, p0, Lcom/alipay/euler/andfix/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 210
    invoke-static {p2}, Lcom/alipay/euler/andfix/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/euler/andfix/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 212
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
