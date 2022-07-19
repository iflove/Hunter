.class final Lcom/seiginonakama/res/utils/ResIdUtils$1;
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
        "Lcom/abq/qba/e/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;


# direct methods
.method constructor <init>(Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/seiginonakama/res/utils/ResIdUtils$1;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisit(Lcom/abq/qba/e/r$a;)V
    .locals 1
    .param p1, "entry"    # Lcom/abq/qba/e/r$a;

    .line 86
    iget-object v0, p0, Lcom/seiginonakama/res/utils/ResIdUtils$1;->val$modifier:Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;

    invoke-static {p1, v0}, Lcom/seiginonakama/res/utils/ResIdUtils;->modifyRefResourceId(Lcom/abq/qba/e/r$a;Lcom/seiginonakama/res/utils/ResIdUtils$Modifier;)V

    .line 87
    return-void
.end method

.method public final bridge synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/abq/qba/e/r$a;

    invoke-virtual {p0, p1}, Lcom/seiginonakama/res/utils/ResIdUtils$1;->onVisit(Lcom/abq/qba/e/r$a;)V

    return-void
.end method
