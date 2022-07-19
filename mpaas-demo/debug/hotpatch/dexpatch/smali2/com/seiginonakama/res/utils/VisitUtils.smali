.class public Lcom/seiginonakama/res/utils/VisitUtils;
.super Ljava/lang/Object;
.source "VisitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResTableFrom(Lcom/abq/qba/e/j;)Lcom/abq/qba/e/l;
    .locals 4
    .param p0, "resourceFile"    # Lcom/abq/qba/e/j;

    .line 42
    invoke-virtual {p0}, Lcom/abq/qba/e/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/a;

    .line 43
    .local v2, "chunk":Lcom/abq/qba/e/a;
    move-object v2, v3

    instance-of v3, v3, Lcom/abq/qba/e/l;

    if-eqz v3, :cond_0

    .line 44
    move-object v0, v2

    check-cast v0, Lcom/abq/qba/e/l;

    return-object v0

    .line 46
    .end local v2    # "chunk":Lcom/abq/qba/e/a;
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    return-object v1
.end method

.method public static visitEntry(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 5
    .param p0, "packageChunk"    # Lcom/abq/qba/e/f;
    .param p1, "visitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abq/qba/e/f;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/r$a;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/abq/qba/e/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/abq/qba/e/a;

    .line 31
    .local v1, "chunk":Lcom/abq/qba/e/a;
    move-object v1, v3

    instance-of v3, v3, Lcom/abq/qba/e/r;

    if-eqz v3, :cond_1

    .line 32
    move-object v3, v1

    check-cast v3, Lcom/abq/qba/e/r;

    invoke-virtual {v3}, Lcom/abq/qba/e/r;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/abq/qba/e/r$a;

    .line 33
    .local v2, "entry":Lcom/abq/qba/e/r$a;
    move-object v2, v4

    if-eqz v4, :cond_0

    .line 34
    invoke-interface {p1, v2}, Lcom/seiginonakama/res/utils/VisitUtils$Visitor;->onVisit(Ljava/lang/Object;)V

    .line 36
    .end local v2    # "entry":Lcom/abq/qba/e/r$a;
    :cond_0
    goto :goto_1

    .line 38
    .end local v1    # "chunk":Lcom/abq/qba/e/a;
    :cond_1
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public static visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 1
    .param p0, "packageChunk"    # Lcom/abq/qba/e/f;
    .param p1, "visitor"    # Lcom/seiginonakama/res/utils/VisitUtils$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/abq/qba/e/f;",
            "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
            "Lcom/abq/qba/e/m;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/seiginonakama/res/utils/VisitUtils$1;

    invoke-direct {v0, p1}, Lcom/seiginonakama/res/utils/VisitUtils$1;-><init>(Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    invoke-static {p0, v0}, Lcom/seiginonakama/res/utils/VisitUtils;->visitEntry(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V

    .line 27
    return-void
.end method
