.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog$1;
.super Ljava/lang/Object;
.source "ANRExtraDog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    .line 46
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog$1;->a:Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;->a(Lcom/alipay/android/phone/mobilesdk/apm/anr/extra/ANRExtraDog;I)I

    .line 50
    return-void
.end method
