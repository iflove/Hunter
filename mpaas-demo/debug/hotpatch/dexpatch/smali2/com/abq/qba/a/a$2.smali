.class final Lcom/abq/qba/a/a$2;
.super Ljava/lang/Object;
.source "MergeHandler.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator<",
        "Lcom/abq/qba/a/a$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/abq/qba/a/a$e;Lcom/abq/qba/a/a$e;)I
    .locals 2
    .param p0, "t1"    # Lcom/abq/qba/a/a$e;
    .param p1, "t2"    # Lcom/abq/qba/a/a$e;

    .line 1032
    iget-object v0, p0, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    iget v0, v0, Lcom/abq/qba/e/s;->e:I

    iget-object v1, p1, Lcom/abq/qba/a/a$e;->a:Lcom/abq/qba/e/s;

    iget v1, v1, Lcom/abq/qba/e/s;->e:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1029
    check-cast p1, Lcom/abq/qba/a/a$e;

    check-cast p2, Lcom/abq/qba/a/a$e;

    invoke-static {p1, p2}, Lcom/abq/qba/a/a$2;->a(Lcom/abq/qba/a/a$e;Lcom/abq/qba/a/a$e;)I

    move-result p1

    return p1
.end method
