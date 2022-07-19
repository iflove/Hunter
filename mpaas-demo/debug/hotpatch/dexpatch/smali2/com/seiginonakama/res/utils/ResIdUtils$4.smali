.class final Lcom/seiginonakama/res/utils/ResIdUtils$4;
.super Ljava/lang/Object;
.source "ResIdUtils.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seiginonakama/res/utils/ResIdUtils;->modifyRefResourceId(Ljava/io/File;Ljava/io/File;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/seiginonakama/res/utils/VisitUtils$Visitor<",
        "Lcom/abq/qba/e/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;


# direct methods
.method constructor <init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$4;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisit(Lcom/abq/qba/e/ad;)V
    .locals 6
    .param p1, "xmlResourceMapChunk"    # Lcom/abq/qba/e/ad;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "remappedResIds":Ljava/util/List;
    iget-object v1, p1, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 113
    .local v2, "resId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/seiginonakama/res/utils/ResIdUtils$4;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5}, Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;->onModify(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v2    # "resId":Ljava/lang/Integer;
    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p1, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    iget-object v1, p1, Lcom/abq/qba/e/ad;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method

.method public final bridge synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/abq/qba/e/ad;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils$4;->onVisit(Lcom/abq/qba/e/ad;)V

    return-void
.end method
