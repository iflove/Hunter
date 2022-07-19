.class final Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;
.super Ljava/lang/Object;
.source "MainThreadSensitiveWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;)V
    .locals 2
    .param p1, "mEatenListener"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->b:J

    .line 146
    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->c:J

    .line 151
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;

    .line 136
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->b:J

    .line 162
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->c:J

    .line 163
    return-void
.end method

.method public final b()J
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->c:J

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final run()V
    .locals 2

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->c:J

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;->a:Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a$a;->a(Lcom/alipay/android/phone/mobilesdk/apm/postlaunch/MainThreadSensitiveWatcher$a;)V

    .line 158
    return-void
.end method
