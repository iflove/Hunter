.class Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
.super Ljava/lang/Object;
.source "SocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/utils/SocketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SndTimeoutInitModel"
.end annotation


# instance fields
.field fileDescriptor:Ljava/io/FileDescriptor;

.field result:Z

.field so_sndtimeo:Ljava/lang/Integer;

.field sol_socket:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->sol_socket:Ljava/lang/Integer;

    .line 355
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->so_sndtimeo:Ljava/lang/Integer;

    .line 357
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->result:Z

    return-void
.end method

.method public static getInstance(Ljava/net/Socket;)Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
    .locals 5
    .param p0, "socket"    # Ljava/net/Socket;

    .line 362
    new-instance v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;-><init>()V

    .line 363
    .local v0, "sndTimeoutInitModel":Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;
    const-string v1, "SocketUtil"

    if-nez p0, :cond_0

    .line 364
    const-string/jumbo v2, "socket is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const-string/jumbo v2, "socket is closed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-object v0

    .line 371
    :cond_1
    # invokes: Lcom/alipay/mobile/common/transport/utils/SocketUtil;->h()Ljava/lang/Integer;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->access$000()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->sol_socket:Ljava/lang/Integer;

    .line 372
    if-nez v2, :cond_2

    .line 373
    const-string/jumbo v2, "sol_socket is closed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-object v0

    .line 376
    :cond_2
    # invokes: Lcom/alipay/mobile/common/transport/utils/SocketUtil;->i()Ljava/lang/Integer;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->access$100()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->so_sndtimeo:Ljava/lang/Integer;

    .line 377
    if-nez v2, :cond_3

    .line 378
    const-string/jumbo v2, "so_sndtimeo is closed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-object v0

    .line 381
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/transport/utils/SocketUtil;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/SocketUtil;->access$200(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    .line 382
    .local v3, "tmpGetFileDescriptorMethod":Ljava/lang/reflect/Method;
    move-object v3, v2

    if-nez v2, :cond_4

    .line 383
    const-string v2, "getGetFileDescriptorMethod return null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v0

    .line 387
    :cond_4
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->fileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    nop

    .line 392
    if-nez v2, :cond_5

    .line 393
    const-string v2, "fileDescriptor is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-object v0

    .line 396
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/utils/SocketUtil$SndTimeoutInitModel;->result:Z

    .line 397
    return-object v0

    .line 388
    :catchall_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "Invoke getFileDescriptor method fail"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    return-object v0
.end method
