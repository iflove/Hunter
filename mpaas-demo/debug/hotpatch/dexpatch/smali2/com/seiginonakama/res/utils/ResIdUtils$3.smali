.class final Lcom/seiginonakama/res/utils/ResIdUtils$3;
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
        "Lcom/abq/qba/e/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;


# direct methods
.method constructor <init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$3;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisit(Lcom/abq/qba/e/m;)V
    .locals 4
    .param p1, "resourceValue"    # Lcom/abq/qba/e/m;

    .line 98
    invoke-virtual {p1}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    .local v1, "type":Lcom/abq/qba/e/m$a;
    move-object v1, v0

    sget-object v2, Lcom/abq/qba/e/m$a;->b:Lcom/abq/qba/e/m$a;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->c:Lcom/abq/qba/e/m$a;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->h:Lcom/abq/qba/e/m$a;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/abq/qba/e/m$a;->i:Lcom/abq/qba/e/m$a;

    if-ne v1, v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ResIdUtils$3;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-virtual {p1}, Lcom/abq/qba/e/m;->c()I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;->onModify(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/abq/qba/e/m;->a(I)V

    .line 105
    :cond_1
    return-void
.end method

.method public final bridge synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils$3;->onVisit(Lcom/abq/qba/e/m;)V

    return-void
.end method
