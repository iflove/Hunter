.class final Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;
.super Ljava/lang/Object;
.source "LiteProcessBizRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;->onLiteProcessPreload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:Ljava/util/HashMap;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;JJJJJLjava/util/HashMap;Ljava/lang/String;)V
    .locals 3

    .line 46
    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->a:I

    move v1, p2

    iput v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->b:I

    move-object v1, p3

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->d:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->e:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->f:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->g:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->h:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->i:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->j:Ljava/util/HashMap;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 51
    .local v1, "msg":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string/jumbo v2, "preload_total%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_current%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_from%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|cloud_id%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|process_alias%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|process_create%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|first_foreground%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|current_foreground%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_start%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_complete%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-wide v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|assistant_extra%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|mobileaix_version%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lcom/alipay/mobileaix/MobileAiXManager;->getFrameworkVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "msg2":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->j:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->j:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_0
    const-string v2, "10112"

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$1;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/mobileaix/MobileAiXLogger;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "msg2":Ljava/lang/StringBuilder;
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcessBizRecorder"

    const-string v3, "log_liteprocess_preload error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_liteprocess_preload"

    const-string v3, "crash"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobileaix/MobileAiXLogger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method
