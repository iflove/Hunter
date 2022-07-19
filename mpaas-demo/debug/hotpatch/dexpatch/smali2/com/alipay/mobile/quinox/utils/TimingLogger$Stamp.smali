.class Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;
.super Ljava/lang/Object;
.source "TimingLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/TimingLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stamp"
.end annotation


# instance fields
.field id:J

.field index:I

.field stamp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/utils/TimingLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/utils/TimingLogger$1;

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/TimingLogger$Stamp;-><init>()V

    return-void
.end method
