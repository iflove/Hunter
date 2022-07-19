.class final Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;
.super Ljava/lang/Object;
.source "LiteProcessBizRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder;->onTinyAppStart(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJJJJJ)V
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

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:J

.field final synthetic k:J

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;ZJJJJJJZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->a:I

    move v1, p2

    iput v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->b:I

    move-object v1, p3

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->d:Ljava/lang/String;

    move v1, p5

    iput-boolean v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->e:Z

    move-wide v1, p6

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->f:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->g:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->h:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->i:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->k:J

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->l:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->m:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 97
    .local v1, "msg":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string/jumbo v2, "preload_total%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_current%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_from%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|cloud_id%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sCloudId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|process_alias%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_completed%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|process_create%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->f:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|first_foreground%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->g:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|current_foreground%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_start%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->i:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|preload_complete%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->j:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|tinyapp_start_time%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->k:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|assistant_extra%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v2, Lcom/alipay/mobile/liteprocess/PreloadAiAssistant;->sExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|mobileaix_version%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Lcom/alipay/mobileaix/MobileAiXManager;->getFrameworkVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|is_preloaded%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-boolean v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->l:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "10113"

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessBizRecorder$2;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/mobileaix/MobileAiXLogger;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v1    # "msg":Ljava/lang/StringBuilder;
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcessBizRecorder"

    const-string v3, "log_tinyapp_start error!"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_tinyapp_start"

    const-string v3, "crash"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobileaix/MobileAiXLogger;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method
