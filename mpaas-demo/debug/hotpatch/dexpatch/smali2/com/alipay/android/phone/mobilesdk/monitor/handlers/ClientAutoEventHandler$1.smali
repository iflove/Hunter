.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;
.super Ljava/lang/Object;
.source "ClientAutoEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:J

.field final synthetic d:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    .line 208
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->d:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->b:Ljava/lang/StringBuilder;

    iput-wide p4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->d:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->b:Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->c:J

    # invokes: Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->a(Ljava/lang/String;Ljava/lang/StringBuilder;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->access$000(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/String;Ljava/lang/StringBuilder;J)V

    .line 213
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->d:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    # getter for: Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->access$100(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler$1;->d:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->n:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;->access$102(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ClientAutoEventHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ClientAutoEventHandler"

    const-string v2, "delayed is foreground event, and reset"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method
