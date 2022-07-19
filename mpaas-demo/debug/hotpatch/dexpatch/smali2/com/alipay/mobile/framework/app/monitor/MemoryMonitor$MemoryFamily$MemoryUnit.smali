.class Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryUnit"
.end annotation


# instance fields
.field memInfo:J

.field final synthetic this$1:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;

.field unitName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$1"    # Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;
    .param p2, "unitName"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->this$1:Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->unitName:Ljava/lang/String;

    .line 252
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    .line 253
    return-void
.end method

.method private static a()J
    .locals 10

    const-string v0, "FRAME.MemoryMonitor"

    const-wide/16 v1, 0x0

    .line 267
    .local v1, "memInfo":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 268
    .local v3, "start2":J
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->b()J

    move-result-wide v5

    move-wide v1, v5

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 270
    .local v5, "end2":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "readMemInfoFromProc costs: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v8, v5, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " memInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    return-wide v1

    .line 272
    .end local v1    # "memInfo":J
    .end local v3    # "start2":J
    .end local v5    # "end2":J
    :catchall_0
    move-exception v1

    .line 273
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v1    # "tr":Ljava/lang/Throwable;
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static b()J
    .locals 10

    .line 280
    const-string v0, ""

    const-string v1, "VmRSS:"

    const-string v2, "FRAME.MemoryMonitor"

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$200()I

    move-result v3

    if-gez v3, :cond_0

    .line 281
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    # setter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I
    invoke-static {v3}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$202(I)I

    .line 283
    :cond_0
    const/4 v3, 0x0

    .line 284
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 286
    .local v4, "br":Ljava/io/BufferedReader;
    const-wide/16 v5, -0x1

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/proc/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->c:I
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor;->access$200()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 287
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 288
    move-object v4, v7

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 290
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 291
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "kB"

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 303
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    goto :goto_1

    .line 304
    :catchall_0
    move-exception v5

    .line 305
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    goto :goto_2

    .line 310
    :catchall_1
    move-exception v5

    .line 311
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_2
    return-wide v0

    .line 294
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v7, v8

    goto :goto_0

    .line 303
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 306
    goto :goto_3

    .line 304
    :catchall_2
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 312
    goto :goto_4

    .line 310
    :catchall_3
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    return-wide v5

    .line 297
    .end local v7    # "text":Ljava/lang/String;
    :catchall_4
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 301
    if-eqz v3, :cond_3

    .line 303
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 306
    goto :goto_5

    .line 304
    :catchall_5
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 309
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 312
    goto :goto_6

    .line 310
    :catchall_6
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_6
    return-wide v5

    .line 301
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_7
    move-exception v0

    if-eqz v3, :cond_5

    .line 303
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 306
    goto :goto_7

    .line 304
    :catchall_8
    move-exception v1

    .line 305
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 309
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 312
    goto :goto_8

    .line 310
    :catchall_9
    move-exception v1

    .line 311
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_8
    throw v0
.end method


# virtual methods
.method recordMemInfo()V
    .locals 6

    .line 256
    iget-wide v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    const-string v2, "FRAME.MemoryMonitor"

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 257
    invoke-static {}, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "record unitName memInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->unitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " memInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/mobile/framework/app/monitor/MemoryMonitor$MemoryFamily$MemoryUnit;->memInfo:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_0
    const-string/jumbo v0, "record unitName memInfo already had."

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
