.class final Lcom/uc/crashsdk/e$b;
.super Ljava/io/OutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/crashsdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/io/OutputStream;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(JLjava/io/OutputStream;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/crashsdk/e$b;->c:I

    .line 141
    iput v0, p0, Lcom/uc/crashsdk/e$b;->d:I

    .line 142
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$b;->e:Z

    .line 145
    iput-wide p1, p0, Lcom/uc/crashsdk/e$b;->a:J

    .line 146
    iput-object p3, p0, Lcom/uc/crashsdk/e$b;->b:Ljava/io/OutputStream;

    .line 147
    return-void
.end method

.method private a([BII)I
    .locals 6

    .line 151
    iget v0, p0, Lcom/uc/crashsdk/e$b;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uc/crashsdk/e$b;->d:I

    .line 152
    iget-boolean v0, p0, Lcom/uc/crashsdk/e$b;->e:Z

    if-eqz v0, :cond_0

    .line 153
    const/4 p1, 0x0

    return p1

    .line 156
    :cond_0
    nop

    .line 157
    invoke-static {}, Lcom/uc/crashsdk/h;->A()I

    move-result v0

    .line 158
    if-lez v0, :cond_1

    iget v1, p0, Lcom/uc/crashsdk/e$b;->c:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_1

    .line 159
    sub-int/2addr v0, v1

    goto :goto_0

    .line 161
    :cond_1
    move v0, p3

    :goto_0
    iget v1, p0, Lcom/uc/crashsdk/e$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uc/crashsdk/e$b;->c:I

    .line 162
    iget-wide v1, p0, Lcom/uc/crashsdk/e$b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 163
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, v1}, Lcom/uc/crashsdk/e$b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/uc/crashsdk/e$b;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    :goto_1
    if-ge v0, p3, :cond_3

    .line 169
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uc/crashsdk/e$b;->e:Z

    .line 171
    :cond_3
    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 246
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 247
    iget-wide v0, p0, Lcom/uc/crashsdk/e$b;->a:J

    invoke-static {v0, v1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeClientWriteData(JLjava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 176
    :try_start_0
    iget v0, p0, Lcom/uc/crashsdk/e$b;->d:I

    iget v1, p0, Lcom/uc/crashsdk/e$b;->c:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 177
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$b;->a(Ljava/lang/String;)V

    .line 178
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$b;->a(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/h;->A()I

    move-result v0

    .line 182
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Full: %d bytes, write: %d bytes, limit: %d bytes, reject: %d bytes.\n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/uc/crashsdk/e$b;->d:I

    .line 184
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/uc/crashsdk/e$b;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x3

    iget v4, p0, Lcom/uc/crashsdk/e$b;->d:I

    iget v5, p0, Lcom/uc/crashsdk/e$b;->c:I

    sub-int/2addr v4, v5

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 182
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    .line 193
    invoke-static {}, Lcom/uc/crashsdk/e;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "DEBUG"

    invoke-static {v0, p1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-wide v0, p0, Lcom/uc/crashsdk/e$b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 197
    invoke-direct {p0, p1}, Lcom/uc/crashsdk/e$b;->b(Ljava/lang/String;)V

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/uc/crashsdk/e$b;->b:Ljava/io/OutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 201
    return-void
.end method

.method public final write(I)V
    .locals 8

    .line 205
    invoke-static {}, Lcom/uc/crashsdk/e;->z()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "%c"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DEBUG"

    invoke-static {v4, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-wide v4, p0, Lcom/uc/crashsdk/e$b;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/e$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/uc/crashsdk/e$b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 213
    :goto_0
    iget p1, p0, Lcom/uc/crashsdk/e$b;->c:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/uc/crashsdk/e$b;->c:I

    .line 214
    iget p1, p0, Lcom/uc/crashsdk/e$b;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/uc/crashsdk/e$b;->d:I

    .line 215
    return-void
.end method

.method public final write([B)V
    .locals 3

    .line 234
    invoke-static {}, Lcom/uc/crashsdk/e;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/e;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 238
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string v2, "DEBUG"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    .line 242
    :cond_1
    :goto_0
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lcom/uc/crashsdk/e$b;->a([BII)I

    .line 243
    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 220
    invoke-static {}, Lcom/uc/crashsdk/e;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/e;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-array v0, p3, [B

    .line 222
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    aget-byte v1, v0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 225
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "DEBUG"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    .line 229
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/uc/crashsdk/e$b;->a([BII)I

    .line 230
    return-void
.end method
