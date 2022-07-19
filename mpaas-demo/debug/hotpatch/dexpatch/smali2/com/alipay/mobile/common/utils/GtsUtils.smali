.class public final Lcom/alipay/mobile/common/utils/GtsUtils;
.super Ljava/lang/Object;
.source "GtsUtils.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get64HexCurrentTimeMillis()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/utils/GtsUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->c10to64(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrentTimeMillis()J
    .locals 7

    .line 13
    const-wide/16 v0, 0x0

    .local v0, "ltm":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    move-wide v0, v2

    sget-wide v4, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 15
    nop

    .line 16
    sput-wide v0, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    return-wide v0

    .line 19
    :cond_0
    const-class v2, Lcom/alipay/mobile/common/utils/GtsUtils;

    monitor-enter v2

    .line 21
    const-wide/16 v3, 0x5

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 22
    :catch_0
    move-exception v3

    .line 23
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v4, "GtsUtils"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 26
    sput-wide v3, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    monitor-exit v2

    return-wide v3

    .line 27
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
