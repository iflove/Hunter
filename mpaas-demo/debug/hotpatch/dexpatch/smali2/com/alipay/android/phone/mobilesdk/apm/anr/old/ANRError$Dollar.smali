.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;
.super Ljava/lang/Object;
.source "ANRError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dollar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar$_Thread;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/StackTraceElement;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;->b:[Ljava/lang/StackTraceElement;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/StackTraceElement;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;

    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;)[Ljava/lang/StackTraceElement;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;

    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$Dollar;->b:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
