.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;
.super Ljava/lang/Object;
.source "HighCpuUsageAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer;->a(Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$AnalyzerResult;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .param p1, "s1"    # [Ljava/lang/StackTraceElement;
    .param p2, "s2"    # [Ljava/lang/StackTraceElement;

    .line 202
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->b:Ljava/lang/Integer;

    .line 207
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->c:Ljava/lang/Integer;

    .line 208
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1

    return v2

    :cond_1
    return v3

    .line 212
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    return v2

    .line 214
    :cond_3
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    return v3

    .line 218
    :cond_4
    array-length v1, p1

    array-length v4, p2

    if-le v1, v4, :cond_5

    return v2

    :cond_5
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_6

    return v0

    :cond_6
    return v3

    .line 203
    :cond_7
    :goto_0
    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 195
    check-cast p1, [Ljava/lang/StackTraceElement;

    check-cast p2, [Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/HighCpuUsageAnalyzer$1;->a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result p1

    return p1
.end method
