.class final Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;
.super Ljava/lang/Object;
.source "ProcessDataReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->onTimeTickTrigger(Ljava/lang/String;Landroid/content/Context;J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    .line 87
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->c:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    iput-wide p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->a:J

    iput-wide p4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->c:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->a:J

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$2;->b:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;->a(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;JJ)V

    .line 91
    return-void
.end method
