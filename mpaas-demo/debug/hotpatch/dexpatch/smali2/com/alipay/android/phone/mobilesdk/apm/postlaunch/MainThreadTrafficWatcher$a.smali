.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;
.super Ljava/lang/Object;
.source "MainThreadTrafficWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:J

.field c:J

.field d:J

.field e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "startTimestamp"    # J
    .param p3, "stopTimestamp"    # J

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->a:J

    .line 187
    iput-wide p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->b:J

    .line 188
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 191
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->b:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->a:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->c:J

    .line 192
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->e:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;

    if-eqz v2, :cond_0

    .line 193
    iget-wide v2, v2, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->a:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->d:J

    .line 195
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaData{startTimestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stopTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadTrafficWatcher$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
