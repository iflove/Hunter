.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;
.super Ljava/lang/Object;
.source "CpuCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$b;,
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

.field private e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

.field private f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

.field private g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    .line 26
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;-><init>(B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->b:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;J)J
    .locals 5
    .param p0, "before"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;
    .param p1, "after"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;
    .param p2, "totalCpuTime"    # J

    .line 199
    iget-wide v0, p1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    sub-long/2addr v0, v2

    .line 203
    .local v0, "alipayTotalCpuTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    const-wide/16 v2, 0x64

    mul-long v2, v2, v0

    div-long/2addr v2, p2

    return-wide v2

    .line 204
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;
    .locals 1

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    return-object v1

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "processCpuInfo":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    .line 179
    .local v3, "builder":Ljava/lang/StringBuilder;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 180
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .local v4, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    goto :goto_1

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 184
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 185
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file2String, can\'t read file, path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .end local v2    # "tr":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 189
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    :goto_2
    goto :goto_3

    .line 190
    :catch_1
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 195
    :cond_2
    :goto_3
    return-object v1

    .line 187
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 189
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 192
    goto :goto_4

    .line 190
    :catch_2
    move-exception v2

    .line 191
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v1
.end method

.method private a(IJ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "timestamp"    # J

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 211
    .local v2, "appStat":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v1, "rawData":[Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    array-length v0, v1

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0xd

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0xe

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0xf

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0x10

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iput-wide p2, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string v4, "cpu data format exception"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string v4, "cpu data length exception"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v1    # "rawData":[Ljava/lang/String;
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string/jumbo v3, "readCpuStatus, empty alipay cpu usage status"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private a(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    const-string v0, "/proc/stat"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 237
    .local v2, "phoneStat":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v1, "rawData":[Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_1

    .line 240
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string/jumbo v4, "readCpuStatus, can\'t find system cpu usage status"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 243
    :cond_1
    array-length v0, v1

    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x5

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/4 v3, 0x7

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0x8

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iput-wide p1, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string v4, "cpu data format exception"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string v4, "cpu data length exception"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v1    # "rawData":[Ljava/lang/String;
    return-void

    .line 262
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    const-string/jumbo v3, "readCpuStatus, empty system cpu usage status"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "rawStat"    # Ljava/lang/String;

    .line 267
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 268
    .local v0, "idxLeft":I
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 269
    .local v1, "idxRight":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "left":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "right":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 273
    .local v7, "elements":[Ljava/lang/String;
    move-object v7, v5

    array-length v5, v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 274
    aput-object v3, v7, v8

    .line 275
    return-object v7

    .line 277
    :cond_0
    return-object v6
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "rawStat"    # Ljava/lang/String;

    .line 282
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 284
    .local v4, "line":Ljava/lang/String;
    move-object v4, v5

    const-string v6, "cpu "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    const-string v0, "\\s+"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 64
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 67
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    const-string v1, "/proc/stat"

    .line 69
    .local v1, "cpuPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 70
    .local v3, "f":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    .end local v1    # "cpuPath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    nop

    .line 79
    return v4

    .line 71
    .restart local v1    # "cpuPath":Ljava/lang/String;
    .restart local v3    # "f":Ljava/io/File;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return v0

    .line 75
    .end local v1    # "cpuPath":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    .line 76
    .local v1, "throwable":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 11

    monitor-enter p0

    .line 85
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 86
    .local v1, "pid":I
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->b:Z

    if-eqz v2, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, "timestamp":J
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(J)V

    .line 89
    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(IJ)V

    .line 90
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 91
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 92
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    .line 93
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    .line 94
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    .line 95
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    .line 96
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    .line 97
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    .line 98
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    .line 99
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    .line 100
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    .line 101
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    .line 102
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    .line 104
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 105
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 106
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    .line 107
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    .line 108
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    .line 109
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    .line 110
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    .line 111
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    .line 112
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    .line 113
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    .line 114
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    .line 115
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    .line 116
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v5, v5, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    iput-wide v5, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    .line 117
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    .line 120
    .end local v2    # "timestamp":J
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 121
    .restart local v2    # "timestamp":J
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(J)V

    .line 122
    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(IJ)V

    .line 123
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v4, v4, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v6, v6, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    sub-long/2addr v4, v6

    .line 133
    .local v4, "totalCpuTime":J
    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    invoke-static {v6, v7, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;J)J

    move-result-wide v6

    .line 134
    .local v6, "alipayCpuUsage":J
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 135
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 136
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    .line 137
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    .line 138
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    .line 139
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    .line 140
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    .line 141
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    .line 142
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    .line 143
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    .line 144
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    .line 145
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    .line 146
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->e:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->g:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    .line 148
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->a:J

    .line 149
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->b:J

    .line 150
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->c:J

    .line 151
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->d:J

    .line 152
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->e:J

    .line 153
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->f:J

    .line 154
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->g:J

    .line 155
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->h:J

    .line 156
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->i:J

    .line 157
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->j:J

    .line 158
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->k:J

    .line 159
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->l:J

    .line 160
    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->d:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->f:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;

    iget-wide v9, v9, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    iput-wide v9, v8, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$a;->m:J

    .line 162
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    .end local v1    # "pid":I
    .end local v2    # "timestamp":J
    .end local v4    # "totalCpuTime":J
    .end local v6    # "alipayCpuUsage":J
    :catchall_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    monitor-exit p0

    return-object v0

    .line 84
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
