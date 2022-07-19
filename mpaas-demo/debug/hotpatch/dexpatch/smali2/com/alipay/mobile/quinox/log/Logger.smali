.class public abstract Lcom/alipay/mobile/quinox/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final D:Ljava/lang/String; = "d"

.field public static final DEBUG:I = 0x3

.field public static final E:Ljava/lang/String; = "e"

.field public static final ERROR:I = 0x6

.field public static final I:Ljava/lang/String; = "i"

.field public static final INFO:I = 0x4

.field public static final LEVEL_TO_LVL:[Ljava/lang/String;

.field public static final V:Ljava/lang/String; = "v"

.field public static final VERBOSE:I = 0x2

.field public static final W:Ljava/lang/String; = "w"

.field public static final WARN:I = 0x5


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    const-string v0, "v"

    const-string v1, "d"

    const-string v2, "i"

    const-string v3, "w"

    const-string v4, "e"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/log/Logger;->LEVEL_TO_LVL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 107
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 110
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 122
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 125
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 130
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 133
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

    .line 230
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 233
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 245
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 248
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 253
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 254
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 256
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 146
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 161
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 169
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 170
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 172
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract info(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLogLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 51
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 52
    iput p1, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    return-void

    .line 54
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

    .line 68
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 71
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 83
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 86
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 91
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 94
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

    .line 185
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 188
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 200
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 203
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 214
    iget v0, p0, Lcom/alipay/mobile/quinox/log/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 215
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/log/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/quinox/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 217
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/String;)I
.end method
