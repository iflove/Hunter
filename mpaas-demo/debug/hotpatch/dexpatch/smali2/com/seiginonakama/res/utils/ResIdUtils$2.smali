.class final Lcom/seiginonakama/res/utils/ResIdUtils$2;
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

    .line 89
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$2;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisit(Lcom/abq/qba/e/m;)V
    .locals 1
    .param p1, "resourceValue"    # Lcom/abq/qba/e/m;

    .line 92
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ResIdUtils$2;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    # invokes: Lcom/seiginonakama/res/utils/ResIdUtils;->modifyResourceValueIfRef(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    invoke-static {p1, v0}, Lcom/seiginonakama/res/utils/ResIdUtils;->access$000(Lcom/abq/qba/e/m;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    .line 93
    return-void
.end method

.method public final bridge synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils$2;->onVisit(Lcom/abq/qba/e/m;)V

    return-void
.end method
