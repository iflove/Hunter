.class final Lcom/alipay/mobile/quinox/framemonitor/d$3;
.super Ljava/lang/Object;
.source "CpuSampler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/framemonitor/d;->c(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/quinox/framemonitor/cpu/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/framemonitor/cpu/d;Lcom/alipay/mobile/quinox/framemonitor/cpu/d;)I
    .locals 7
    .param p0, "lhs"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/d;
    .param p1, "rhs"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    .line 258
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    add-long/2addr v0, v2

    .line 259
    .local v0, "left":J
    iget-wide v2, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->c:J

    iget-wide v4, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;->d:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 260
    .local v4, "right":J
    move-wide v4, v2

    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 255
    check-cast p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    check-cast p2, Lcom/alipay/mobile/quinox/framemonitor/cpu/d;

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/framemonitor/d$3;->a(Lcom/alipay/mobile/quinox/framemonitor/cpu/d;Lcom/alipay/mobile/quinox/framemonitor/cpu/d;)I

    move-result p1

    return p1
.end method
