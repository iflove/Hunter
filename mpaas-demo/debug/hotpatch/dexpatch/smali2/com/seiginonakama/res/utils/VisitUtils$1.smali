.class final Lcom/seiginonakama/res/utils/VisitUtils$1;
.super Ljava/lang/Object;
.source "VisitUtils.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seiginonakama/res/utils/VisitUtils;->visitResourceValue(Lcom/abq/qba/e/f;Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
        "Lcom/abq/qba/e/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$visitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# direct methods
.method constructor <init>(Lcom/seiginonakama/res/utils/VisitUtils$Visitor;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/seiginonakama/res/utils/VisitUtils$1;->val$visitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisit(Lcom/abq/qba/e/r$a;)V
    .locals 3
    .param p1, "entry"    # Lcom/abq/qba/e/r$a;

    .line 18
    invoke-virtual {p1}, Lcom/abq/qba/e/r$a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/abq/qba/e/r$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/abq/qba/e/m;

    .line 20
    .local v1, "value":Lcom/abq/qba/e/m;
    iget-object v2, p0, Lcom/seiginonakama/res/utils/VisitUtils$1;->val$visitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    invoke-interface {v2, v1}, Lcom/seiginonakama/res/utils/VisitUtils$Visitor;->onVisit(Ljava/lang/Object;)V

    .line 21
    .end local v1    # "value":Lcom/abq/qba/e/m;
    goto :goto_0

    :cond_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/seiginonakama/res/utils/VisitUtils$1;->val$visitor:Lcom/seiginonakama/res/utils/VisitUtils$Visitor;

    invoke-virtual {p1}, Lcom/abq/qba/e/r$a;->d()Lcom/abq/qba/e/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/seiginonakama/res/utils/VisitUtils$Visitor;->onVisit(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public final bridge synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/abq/qba/e/r$a;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/VisitUtils$1;->onVisit(Lcom/abq/qba/e/r$a;)V

    return-void
.end method
