.class final Lcom/abq/qba/a/a$6;
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

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 829
    iput p1, p0, Lcom/abq/qba/a/a$6;->a:I

    iput p2, p0, Lcom/abq/qba/a/a$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/abq/qba/e/m;)V
    .locals 2
    .param p1, "value"    # Lcom/abq/qba/e/m;

    .line 832
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/abq/qba/e/m;->b()Lcom/abq/qba/e/m$a;

    move-result-object v0

    sget-object v1, Lcom/abq/qba/e/m$a;->d:Lcom/abq/qba/e/m$a;

    if-ne v0, v1, :cond_1

    .line 833
    invoke-virtual {p1}, Lcom/abq/qba/e/m;->c()I

    move-result v0

    .line 834
    iget v1, p0, Lcom/abq/qba/a/a$6;->a:I

    if-ge v0, v1, :cond_0

    .line 836
    return-void

    .line 838
    :cond_0
    iget v0, p0, Lcom/abq/qba/a/a$6;->b:I

    invoke-static {p1, v0}, Lcom/abq/qba/a/a;->a(Lcom/abq/qba/e/m;I)V

    .line 840
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic onVisit(Ljava/lang/Object;)V
    .locals 0

    .line 829
    check-cast p1, Lcom/abq/qba/e/m;

    invoke-direct {p0, p1}, Lcom/abq/qba/a/a$6;->a(Lcom/abq/qba/e/m;)V

    return-void
.end method
