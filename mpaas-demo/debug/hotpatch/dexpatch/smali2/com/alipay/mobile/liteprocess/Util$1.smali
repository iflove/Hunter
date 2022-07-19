.class final Lcom/alipay/mobile/liteprocess/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/Util;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(JLandroid/app/Activity;)V
    .locals 0

    .line 211
    iput-wide p1, p0, Lcom/alipay/mobile/liteprocess/Util$1;->a:J

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/Util$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 215
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/Util$1;->a:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/Util$1;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
