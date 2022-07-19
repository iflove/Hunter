.class final Lcom/alipay/mobile/quinox/framemonitor/d$2;
.super Ljava/lang/Object;
.source "CpuSampler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/framemonitor/d;->b(Lcom/alipay/mobile/quinox/framemonitor/cpu/a;Lcom/alipay/mobile/quinox/framemonitor/cpu/a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/alipay/mobile/quinox/framemonitor/cpu/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/framemonitor/cpu/e;Lcom/alipay/mobile/quinox/framemonitor/cpu/e;)I
    .locals 7
    .param p0, "lhs"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/e;
    .param p1, "rhs"    # Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    .line 205
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    iget-wide v2, p0, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    add-long/2addr v0, v2

    .line 206
    .local v0, "left":J
    iget-wide v2, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->c:J

    iget-wide v4, p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;->d:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 207
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

    .line 202
    check-cast p1, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    check-cast p2, Lcom/alipay/mobile/quinox/framemonitor/cpu/e;

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/framemonitor/d$2;->a(Lcom/alipay/mobile/quinox/framemonitor/cpu/e;Lcom/alipay/mobile/quinox/framemonitor/cpu/e;)I

    move-result p1

    return p1
.end method
