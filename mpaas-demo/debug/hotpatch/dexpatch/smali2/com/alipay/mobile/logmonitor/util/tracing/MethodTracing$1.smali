.class final Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;
.super Ljava/lang/Object;
.source "MethodTracing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a(Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->b:J

    iput-object p5, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->c:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    iput p6, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->e:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->b:J

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->c:Lcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;

    iget v5, p0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing$1;->d:I

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/monitor/analysis/diagnose/UploadTaskStatus;I)V

    .line 33
    return-void
.end method
