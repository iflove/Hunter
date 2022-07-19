.class final Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;
.super Ljava/lang/Object;
.source "ANRError.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;->New(Ljava/lang/String;Z)Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Thread;)I
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Thread;
    .param p2, "rhs"    # Ljava/lang/Thread;

    .line 70
    if-ne p1, p2, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;->a:Ljava/lang/Thread;

    if-ne p1, v0, :cond_1

    .line 73
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    if-ne p2, v0, :cond_2

    .line 75
    const/4 v0, -0x1

    return v0

    .line 76
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/Thread;

    check-cast p2, Ljava/lang/Thread;

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/apm/anr/old/ANRError$1;->a(Ljava/lang/Thread;Ljava/lang/Thread;)I

    move-result p1

    return p1
.end method
