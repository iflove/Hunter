.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog$1;
.super Ljava/lang/Object;
.source "ANRWatchDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    .line 64
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRWatchDog;I)I

    .line 68
    return-void
.end method
