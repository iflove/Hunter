.class final Lcom/abq/qba/a/a$7;
.super Ljava/lang/Object;
.source "MergeHandler.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
        "Lcom/abq/qba/e/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/abq/qba/e/o;

.field final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/abq/qba/e/o;Ljava/util/Map;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/abq/qba/a/a$7;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/abq/qba/a/a$7;->b:Lcom/abq/qba/e/o;

    iput-object p3, p0, Lcom/abq/qba/a/a$7;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/abq/qba/e/m;)V
    .locals 3
    .param p1, "value"    # Lcom/abq/qba/e/m;

    .line 878
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    sget-object v1, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    if-ne v0, v1, :cond_0

    .line 879
    invoke-virtual {p1}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    .line 880
    .local v0, "index":I
    iget-object v1, p0, Lcom/abq/qba/a/a$7;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/abq/qba/a/a$7;->b:Lcom/abq/qba/e/o;

    invoke-virtual {v2, v0}, Lcom/abq/qba/e/o;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v1, p0, Lcom/abq/qba/a/a$7;->b:Lcom/abq/qba/e/o;

    invoke-virtual {v1}, Lcom/abq/qba/e/o;->g()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/abq/qba/a/a$7;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/abq/qba/a/a$7;->b:Lcom/abq/qba/e/o;

    invoke-virtual {v2, v0}, Lcom/abq/qba/e/o;->c(I)Lcom/abq/qba/e/o$b;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .end local v0    # "index":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 875
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-direct {p0, p1}, Lcom/abq/qba/a/a$7;->a(Lcom/abq/qba/e/m;)V

    return-void
.end method
