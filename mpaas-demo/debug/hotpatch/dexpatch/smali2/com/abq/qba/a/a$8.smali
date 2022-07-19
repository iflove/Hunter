.class final Lcom/abq/qba/a/a$8;
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

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/abq/qba/a/a$8;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/abq/qba/a/a$8;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/abq/qba/a/a$8;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/abq/qba/a/a$8;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/abq/qba/e/m;)V
    .locals 5
    .param p1, "value"    # Lcom/abq/qba/e/m;

    .line 918
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    sget-object v1, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 920
    .local v0, "index":I
    iget-object v1, p0, Lcom/abq/qba/a/a$8;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/o$b;

    const/4 v2, 0x0

    .line 921
    .local v2, "style":Lcom/abq/qba/e/o$b;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/abq/qba/a/a$8;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/abq/qba/a/a$8;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    iget-object v1, p0, Lcom/abq/qba/a/a$8;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 928
    .local v1, "string":Ljava/lang/String;
    iget-object v3, p0, Lcom/abq/qba/a/a$8;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 930
    .end local v1    # "string":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/abq/qba/e/m;->a(I)V

    goto :goto_1

    .line 925
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t find string for ResourceValue "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 932
    .end local v0    # "index":I
    .end local v2    # "style":Lcom/abq/qba/e/o$b;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 915
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-direct {p0, p1}, Lcom/abq/qba/a/a$8;->a(Lcom/abq/qba/e/m;)V

    return-void
.end method
