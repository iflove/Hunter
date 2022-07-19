.class final Lcom/uc/webview/export/internal/utility/p;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/uc/webview/export/internal/setup/br;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1276
    check-cast p1, Lcom/uc/webview/export/internal/setup/br;

    check-cast p2, Lcom/uc/webview/export/internal/setup/br;

    .line 2279
    new-instance v0, Ljava/io/File;

    iget-object p2, p2, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 2281
    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 2282
    const/4 p1, 0x1

    return p1

    .line 2283
    :cond_0
    if-nez v2, :cond_1

    .line 2284
    const/4 p1, 0x0

    return p1

    .line 2286
    :cond_1
    const/4 p1, -0x1

    .line 1276
    return p1
.end method
