.class final Lcom/abq/qba/a/a$1;
.super Ljava/lang/Object;
.source "MergeHandler.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/f;Lcom/abq/qba/e/f;)V
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
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 969
    iput p1, p0, Lcom/abq/qba/a/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/abq/qba/e/r$a;)V
    .locals 2
    .param p1, "entry"    # Lcom/abq/qba/e/r$a;

    .line 972
    invoke-virtual {p1}, Lcom/abq/qba/e/r$a;->c()I

    move-result v0

    iget v1, p0, Lcom/abq/qba/a/a$1;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/abq/qba/e/r$a;->a(I)V

    .line 973
    return-void
.end method


# virtual methods
.method public final synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 969
    check-cast p1, Lcom/abq/qba/e/r$a;

    invoke-direct {p0, p1}, Lcom/abq/qba/a/a$1;->a(Lcom/abq/qba/e/r$a;)V

    return-void
.end method
