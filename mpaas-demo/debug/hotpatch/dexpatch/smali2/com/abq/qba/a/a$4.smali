.class final Lcom/abq/qba/a/a$4;
.super Ljava/lang/Object;
.source "MergeHandler.java"

# interfaces
.implements Lcom/seiginonakama/res/utils/VisitUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/l;Lcom/abq/qba/e/l;)V
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
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 789
    iput p1, p0, Lcom/abq/qba/a/a$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/abq/qba/e/m;)V
    .locals 1
    .param p1, "resourceValue"    # Lcom/abq/qba/e/m;

    .line 792
    iget v0, p0, Lcom/abq/qba/a/a$4;->a:I

    invoke-static {p1, v0}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/m;I)V

    .line 793
    return-void
.end method


# virtual methods
.method public final synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 789
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-direct {p0, p1}, Lcom/abq/qba/a/a$4;->a(Lcom/abq/qba/e/m;)V

    return-void
.end method
