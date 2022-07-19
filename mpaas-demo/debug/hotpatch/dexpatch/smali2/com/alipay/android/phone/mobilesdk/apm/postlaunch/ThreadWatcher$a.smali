.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;
.super Ljava/lang/Object;
.source "ThreadWatcher.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "threadNumber"    # I
    .param p2, "timestamp"    # J

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    .line 172
    iput-wide p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    .line 173
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;)I
    .locals 5
    .param p1, "o"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    .line 177
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    int-to-long v0, v0

    .line 178
    .local v0, "x":J
    iget v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    int-to-long v2, v2

    .line 179
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

    .line 166
    check-cast p1, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaData{threadNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/ThreadWatcher$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
