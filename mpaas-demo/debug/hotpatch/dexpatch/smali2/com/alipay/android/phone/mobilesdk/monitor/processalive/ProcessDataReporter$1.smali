.class final Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$1;
.super Ljava/lang/Object;
.source "ProcessDataReporter.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/util/MonitorUtils$FillBufferHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter$1;->a:Lcom/alipay/android/phone/mobilesdk/monitor/processalive/ProcessDataReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 44
    return-object p1
.end method

.method public final handleValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v0, "val":Ljava/lang/String;
    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    return-object v0
.end method
