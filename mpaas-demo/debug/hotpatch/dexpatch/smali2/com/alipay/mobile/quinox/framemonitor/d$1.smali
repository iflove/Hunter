.class final Lcom/alipay/mobile/quinox/framemonitor/d$1;
.super Ljava/lang/Object;
.source "CpuSampler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/framemonitor/d;->a(J)Lcom/alipay/mobile/quinox/framemonitor/cpu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Long;",
        "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/framemonitor/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/framemonitor/d;

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/d$1;->a:Lcom/alipay/mobile/quinox/framemonitor/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "lhs"    # Ljava/util/Map$Entry;
    .param p1, "rhs"    # Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/alipay/mobile/quinox/framemonitor/cpu/a;",
            ">;)I"
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 85
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/framemonitor/d$1;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
