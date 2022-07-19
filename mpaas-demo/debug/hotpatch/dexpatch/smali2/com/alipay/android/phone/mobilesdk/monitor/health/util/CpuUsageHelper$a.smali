.class final Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;
.super Ljava/lang/Object;
.source "CpuUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "procTimeSlice"    # J
    .param p3, "deviceTimeSlice"    # J
    .param p5, "captureTime"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->a:J

    .line 44
    iput-wide p3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->b:J

    .line 45
    iput-wide p5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/health/util/CpuUsageHelper$a;->c:J

    .line 46
    return-void
.end method
