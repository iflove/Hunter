.class final Lcom/linearallocpatch/d$1;
.super Ljava/lang/Object;
.source "MemMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linearallocpatch/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/linearallocpatch/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/linearallocpatch/d;Lcom/linearallocpatch/d;)I
    .locals 4
    .param p0, "lhs"    # Lcom/linearallocpatch/d;
    .param p1, "rhs"    # Lcom/linearallocpatch/d;

    .line 62
    invoke-virtual {p0}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/linearallocpatch/d;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lcom/linearallocpatch/d;

    check-cast p2, Lcom/linearallocpatch/d;

    invoke-static {p1, p2}, Lcom/linearallocpatch/d$1;->a(Lcom/linearallocpatch/d;Lcom/linearallocpatch/d;)I

    move-result p1

    return p1
.end method
