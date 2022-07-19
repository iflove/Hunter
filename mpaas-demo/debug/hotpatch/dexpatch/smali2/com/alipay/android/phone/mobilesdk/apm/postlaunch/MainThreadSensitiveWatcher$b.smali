.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;
.super Ljava/lang/Object;
.source "MainThreadSensitiveWatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "hungryDuration"    # J
    .param p3, "timestamp"    # J

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    .line 114
    iput-wide p3, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->b:J

    .line 115
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;)I
    .locals 5
    .param p1, "o"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    .line 119
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    .line 120
    .local v0, "x":J
    iget-wide v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    .line 121
    .local v2, "y":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 108
    check-cast p1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaData{hungryDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
